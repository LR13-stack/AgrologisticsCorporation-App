<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class SalesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        // Obtener todos los clientes, vendedores, almacenes y artículos
        $customers = DB::table('customers')->get();
        $sellers = DB::table('sellers')->get();
        $warehouses = DB::table('warehouses')->get();
        $articles = DB::table('articles')->get();

        // Crear 50 ventas (puedes ajustar el número de ventas)
        for ($i = 1; $i <= 98; $i++) {
            // Generar una fecha aleatoria de septiembre 2024
            $day = str_pad(rand(1, 30), 2, "0", STR_PAD_LEFT);
            $date = "2024-11-" . $day;

            // Generar una hora aleatoria entre las 8 AM y 4 PM
            $hour = rand(8, 16); // Horas entre 8 AM y 4 PM
            $minute = str_pad(rand(0, 59), 2, "0", STR_PAD_LEFT); // Minutos aleatorios
            $orderTime = $date . " " . $hour . ":" . $minute . ":00";

            // Elegir cliente, vendedor y almacén aleatorio
            $customer = $customers->random();
            $seller = $sellers->random();
            $warehouse = $warehouses->random();

            // Crear el comprobante de pago (similar a las compras)
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
                'observation' => "Comprobante de pago por venta.",
                'created_at' => $orderTime,
                'updated_at' => $orderTime,
            ]);

            // Crear la venta
            $saleId = DB::table('sales')->insertGetId([
                'customer_id' => $customer->id,
                'warehouse_id' => $warehouse->id, // Asegúrate de que el almacén sea el correcto
                'seller_id' => $seller->id,
                'bank_account_id' => rand(1, 5), // Asumimos que tienes varias cuentas bancarias
                'payment_receipt_id' => $paymentReceiptId,
                'type_document' => rand(1, 2) == 1 ? 'Factura' : 'Boleta',
                'payment_receipt_code' => 'PR' . str_pad(rand(1000, 9999), 4, '0', STR_PAD_LEFT),
                'payment_condition' => 'Contado',
                'status' => 'Pagado',
                'currency_type' => 'Soles',
                'igv' => 18,
                'exchange_rate' => 3.5,
                'days' => 0,
                'sale_value' => 0,
                'total_igv' => 0,
                'exonerated' => 0,
                'total' => 0,
                'created_at' => $orderTime,
                'updated_at' => $orderTime,
            ]);

            // Detalles de la venta (5 productos por venta)
            $articlesInSale = $articles->random(5); // 5 artículos aleatorios por venta
            $subtotal = 0;

            foreach ($articlesInSale as $article) {
                // Verificar si existe inventario para este artículo y almacén
                $inventory = DB::table('inventories')->where('article_id', $article->id)
                                                     ->where('warehouse_id', $warehouse->id)
                                                     ->first();

                // Si no existe inventario para el artículo y almacén, saltar al siguiente artículo
                if (!$inventory) {
                    continue;
                }

                // Obtener un lote para el artículo del inventario
                $batch = DB::table('batches')->where('inventory_id', $inventory->id)
                                             ->where('stock', '>', 0)
                                             ->first();

                if ($batch) {
                    // Reducir stock del lote
                    $quantity = rand(1, 50); // Cantidad aleatoria entre 1 y 5

                    if ($batch->stock < $quantity) {
                        $quantity = $batch->stock; // No vender más stock del que existe
                    }

                    // Reducir el stock del lote
                    DB::table('batches')->where('id', $batch->id)->update([
                        'stock' => $batch->stock - $quantity,
                        'updated_at' => $orderTime,
                    ]);

                    // Reducir el stock en el inventario
                    $newStock = $inventory->stock - $quantity;
                    DB::table('inventories')->where('id', $inventory->id)->update([
                        'stock' => $newStock,
                        'updated_at' => $orderTime,
                    ]);

                    // Crear detalles de la venta
                    DB::table('sale_details')->insert([
                        'sale_id' => $saleId,
                        'batch_id' => $batch->id, // Lote utilizado para la venta
                        'quantity' => $quantity,
                        'unit_price' => rand(20, 100),
                        'total' => $quantity * rand(20, 100),
                        'created_at' => $orderTime,
                        'updated_at' => $orderTime,
                    ]);

                    // Actualizar el subtotal de la venta
                    $subtotal += $quantity * rand(20, 100); // Cálculo de subtotal
                }
            }

            // Calcular el IGV (18% del subtotal)
            $totalIgv = $subtotal * 0.18;

            // Actualizar la venta con los montos calculados
            DB::table('sales')->where('id', $saleId)->update([
                'sale_value' => $subtotal,
                'total_igv' => $totalIgv,
                'total' => $subtotal + $totalIgv, // Total incluyendo IGV
                'updated_at' => $orderTime,
            ]);
        }
    }

    protected function getBatchIdForSale($article, $warehouse)
    {
        // Obtiene el primer lote disponible para el artículo y almacén
        $batch = DB::table('batches')->where('article_id', $article->id)
                                      ->where('warehouse_id', $warehouse->id)
                                      ->first();

        return $batch ? $batch->id : null; // Si existe, retorna el ID del lote, sino null
    }
}
