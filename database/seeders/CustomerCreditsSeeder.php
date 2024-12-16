<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CustomerCreditsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Obtener todos los clientes
        $customers = DB::table('customers')->get();
        $sellers = DB::table('sellers')->get(); // Obtener todos los vendedores

        foreach ($customers as $customer) {
            // Elegir un vendedor aleatorio
            $seller = $sellers->random();

            // Asignar el límite de crédito del cliente
            $creditLimit = $customer->credit_limit;
            $creditUsed = 0;
            $creditRemaining = $creditLimit; // Inicialmente el crédito restante es igual al límite

            // Crear el crédito para el cliente
            $creditId = DB::table('customer_credits')->insertGetId([
                'customer_id' => $customer->id,
                'seller_id' => $seller->id,
                'credit_limit' => $creditLimit,
                'credit_used' => $creditUsed,
                'credit_remaining' => $creditRemaining,
                'is_active' => true,
                'payment_receipt_id' => null, // Inicialmente no hay comprobante
                'currency_type' => 'PEN', // Moneda tipo Soles (PEN), puedes ajustarlo si necesitas dólares u otra moneda
                'exchange_rate' => 3.5, // Tasa de cambio (puedes ajustarlo según tu lógica)
                'die_date' => now()->addYear(1), // Fecha de vencimiento (puedes ajustarlo según la política)
                'observation' => 'Crédito asignado según límite del cliente.',
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            // Crear un nuevo comprobante de pago para el crédito
            $paymentReceiptId = DB::table('payment_receipts')->insertGetId([
                'code' => 'PR' . str_pad(rand(1000, 9999), 4, '0', STR_PAD_LEFT),
                'type_document' => 'Crédito',
                'url_qr' => 'https://example.com/qr/' . rand(1000, 9999), // Generar URL QR aleatorio
                'advances' => 0,
                'free_ops' => 0,
                'taxed_ops' => 0,
                'op_tax_free' => 0,
                'op_exempt_ops' => 0,
                'vat' => 0,
                'discounts' => 0,
                'total' => $creditLimit,
                'status' => 'completed',
                'observation' => "Comprobante de pago por crédito de {$creditLimit} para el cliente {$customer->company_name}.",
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            // Actualizar el registro del crédito con el ID del comprobante de pago recién creado
            DB::table('customer_credits')->where('id', $creditId)->update([
                'payment_receipt_id' => $paymentReceiptId,
                'updated_at' => now(),
            ]);
        }
    }
}
