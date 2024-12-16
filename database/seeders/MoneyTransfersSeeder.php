<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MoneyTransfersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Definir los IDs de las cuentas bancarias
        $accounts = [
            1 => 'Soles',
            2 => 'Dolares',
            3 => 'Soles',
            4 => 'Dolares',
            5 => 'Soles',
            6 => 'Dolares',
        ];

        // Número de transferencias a generar
        $numTransfers = 30;

        // Generar transferencias
        for ($i = 0; $i < $numTransfers; $i++) {
            // Elegir cuentas al azar (sin repetir)
            $sourceAccountId = array_rand($accounts);
            $destinationAccountId = array_rand($accounts);
            while ($sourceAccountId === $destinationAccountId) {
                $destinationAccountId = array_rand($accounts);
            }

            // Determinar la tasa de cambio (si es de Dolares a Soles)
            if ($accounts[$sourceAccountId] === 'Dolares' && $accounts[$destinationAccountId] === 'Soles') {
                $exchangeRate = 3.5;
            } elseif ($accounts[$sourceAccountId] === 'Soles' && $accounts[$destinationAccountId] === 'Dolares') {
                $exchangeRate = 1 / 3.5; // Inversa de la tasa de cambio
            } else {
                $exchangeRate = 1;
            }

            // Generar monto aleatorio (por ejemplo, entre 100 y 1000)
            $amount = rand(100000, 1000000) / 10; // Monto en formato decimal

            // Crear la transferencia en la tabla money_transfers
            $transferId = DB::table('money_transfers')->insertGetId([
                'code' => 'MT' . str_pad($i + 1, 4, '0', STR_PAD_LEFT),
                'amount' => $amount,
                'source_account_id' => $sourceAccountId,
                'destination_account_id' => $destinationAccountId,
                'exchange_rate' => $exchangeRate,
                'observation' => "Transferencia de {$amount} de la cuenta {$sourceAccountId} a la {$destinationAccountId}.",
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            // Crear los movimientos de caja (cash_movements) para el egreso (origen)
            DB::table('cash_movements')->insert([
                'account_id' => $sourceAccountId,
                'type_movement' => 'egreso',
                'amount' => $amount,
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            // Crear los movimientos de caja (cash_movements) para el ingreso (destino)
            DB::table('cash_movements')->insert([
                'account_id' => $destinationAccountId,
                'type_movement' => 'ingreso',
                'amount' => $amount * $exchangeRate,
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            // Crear los comprobantes de pago (payment_receipts)
            DB::table('payment_receipts')->insert([
                'code' => 'PR' . str_pad($transferId, 4, '0', STR_PAD_LEFT),
                'type_document' => 'Transferencia',
                'url_qr' => 'https://example.com/qr/' . $transferId,
                'advances' => 0,
                'free_ops' => 0,
                'taxed_ops' => $amount,
                'op_tax_free' => 0,
                'op_exempt_ops' => 0,
                'vat' => $amount * 0.18, // Asumiendo un 18% de IVA
                'discounts' => 0,
                'total' => $amount + ($amount * 0.18),
                'status' => 'completed',
                'observation' => "Transferencia de {$amount} de la cuenta {$sourceAccountId} a la {$destinationAccountId}.",
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
