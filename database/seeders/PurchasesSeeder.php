<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class PurchasesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        // Obtener todos los proveedores, almacenes y artículos
        $suppliers = DB::table('suppliers')->get();
        $warehouses = DB::table('warehouses')->get();
        $articles = DB::table('articles')->get();

        // Crear 94 pedidos (uno por cada día del mes de septiembre 2024)
        for ($i = 1; $i <= 94; $i++) {
            // Generar una fecha aleatoria de septiembre 2024
            $day = str_pad(rand(1, 30), 2, "0", STR_PAD_LEFT);
            $date = "2024-11-" . $day;

            // Generar una hora aleatoria entre las 8 AM y 4 PM
            $hour = rand(8, 16); // Horas entre 8 AM y 4 PM
            $minute = str_pad(rand(0, 59), 2, "0", STR_PAD_LEFT); // Minutos aleatorios
            $orderTime = $date . " " . $hour . ":" . $minute . ":00";

            // Elegir proveedor y almacén aleatorio
            $supplier = $suppliers->random();
            $warehouse = $warehouses->random();

            // Crear el comprobante de pago (como en el ejemplo anterior)
            $paymentReceiptId = DB::table('payment_receipts')->insertGetId([
                'code' => 'PR' . str_pad(rand(1000, 9999), 4, '0', STR_PAD_LEFT),
                'type_document' => rand(1, 2) == 1 ? 'Factura' : 'Boleta',
                'url_qr' => 'https://example.com/qr/' . rand(1000, 9999),
                'advances' => 0,
                'free_ops' => 0,
                'taxed_ops' => 0,
                'op_tax_free' => 0,
                'op_exempt_ops' => 0,
                'vat' => 0,
                'discounts' => 0,
                'total' => 0,
                'status' => 'completed',
                'observation' => "Comprobante de pago por pedido.",
                'created_at' => $orderTime, // Asignar la misma fecha del pedido
                'updated_at' => $orderTime, // Asignar la misma fecha del pedido
            ]);

            // Crear el pedido maestro
            $purchaseId = DB::table('purchases')->insertGetId([
                'supplier_id' => $supplier->id,
                'warehouse_id' => $warehouse->id,
                'payment_receipt_id' => $paymentReceiptId,
                'type_document' => rand(1, 2) == 1 ? 'Factura' : 'Boleta',
                'payment_receipt_code' => 'PR' . str_pad(rand(1000, 9999), 4, '0', STR_PAD_LEFT),
                'date_of_entry' => $orderTime,
                'igv' => 18,
                'exchange_rate' => 3.5,
                'payment_condition' => 'Contado',
                'status' => 'Recibido',
                'currency_type' => 'Soles',
                'sale_value' => 0,
                'total_igv' => 0,
                'exonerated' => 0,
                'subtotal' => 0,
                'total_freight' => 0,
                'total' => 0,
                'created_at' => $orderTime, // Asignar la misma fecha del pedido
                'updated_at' => $orderTime, // Asignar la misma fecha del pedido
            ]);

            // Detalles del pedido (5 productos por pedido)
            $articlesInPurchase = $articles->random(5); // 5 artículos aleatorios por pedido
            $subtotal = 0;
            $totalFreight = 0;

            foreach ($articlesInPurchase as $article) {
                // Verificar si existe inventario para este artículo y almacén
                $inventory = DB::table('inventories')->where('article_id', $article->id)
                                                     ->where('warehouse_id', $warehouse->id)
                                                     ->first();

                $quantity = rand(50, 100); // Cantidad aleatoria entre 50 y 100

                // Si existe inventario, aumentar el stock y crear un nuevo lote para esta nueva cantidad
                if ($inventory) {
                    $newStock = $inventory->stock + $quantity;
                    DB::table('inventories')->where('id', $inventory->id)->update([
                        'stock' => $newStock,
                        'updated_at' => $orderTime,
                    ]);

                    // Generar un código de lote único
                    $batchCode = $this->generateUniqueBatchCode();

                    // Crear un nuevo lote para este inventario
                    DB::table('batches')->insert([
                        'inventory_id' => $inventory->id,
                        'code' => $batchCode,
                        'due_date' => now()->addMonths(rand(1, 6)), // Lote con fecha de vencimiento aleatoria
                        'stock' => $quantity, // La cantidad de este lote
                        'unit_price' => rand(20, 100), // Precio unitario aleatorio
                        'created_at' => $orderTime,
                        'updated_at' => $orderTime,
                    ]);
                } else {
                    // Si no existe, crear un nuevo inventario
                    $inventoryId = DB::table('inventories')->insertGetId([
                        'article_id' => $article->id,
                        'warehouse_id' => $warehouse->id,
                        'stock' => $quantity, // El stock inicial
                        'to_be_collected_from_supplier' => 0,
                        'to_be_delivered_to_customer' => 0,
                        'cost_price' => rand(10, 50),
                        'sale_price' => rand(20, 100),
                        'status' => 'Disponible',
                        'created_at' => $orderTime,
                        'updated_at' => $orderTime,
                    ]);

                    // Generar un código de lote único
                    $batchCode = $this->generateUniqueBatchCode();

                    // Crear un nuevo lote para este inventario
                    DB::table('batches')->insert([
                        'inventory_id' => $inventoryId,
                        'code' => $batchCode,
                        'due_date' => now()->addMonths(rand(1, 6)),
                        'stock' => $quantity,
                        'unit_price' => rand(20, 100),
                        'created_at' => $orderTime,
                        'updated_at' => $orderTime,
                    ]);
                }

                // Crear detalles de compra para este pedido
                DB::table('purchase_details')->insert([
                    'purchase_id' => $purchaseId,
                    'article_id' => $article->id,
                    'unit_of_measurement' => 'Unidad',
                    'batch_code' => $batchCode,
                    'due_date' => now()->addMonths(rand(1, 6)), // Fecha de vencimiento del lote
                    'quantity' => $quantity,
                    'unit_price' => rand(20, 100),
                    'freight' => 0, // Flete
                    'other' => 0, // Otros costos
                    'costs_plus' => 0, // Costo adicional
                    'total' => $quantity * rand(20, 100),
                    'created_at' => $orderTime,
                    'updated_at' => $orderTime,
                ]);

                // Actualizar el subtotal del pedido
                $subtotal += $quantity * rand(20, 100); // Cálculo de subtotal
            }

            // Calcular el IGV (18% del subtotal)
            $totalIgv = $subtotal * 0.18;

            // Actualizar el pedido maestro con los montos
            DB::table('purchases')->where('id', $purchaseId)->update([
                'subtotal' => $subtotal,
                'total_igv' => $totalIgv,
                'total' => $subtotal + $totalIgv + $totalFreight, // Total incluyendo IGV y flete
                'updated_at' => $orderTime, // Fecha de actualización
            ]);
        }
    }

    protected function generateUniqueBatchCode()
    {
        // Generar un código de lote único basado en el timestamp y un prefijo
        do {
            $batchCode = 'BATCH' . str_pad(rand(1000, 9999), 4, '0', STR_PAD_LEFT);
        } while (DB::table('batches')->where('code', $batchCode)->exists()); // Verifica que el código no exista

        return $batchCode;
    }
}
