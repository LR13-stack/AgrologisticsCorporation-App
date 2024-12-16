<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BankAccountSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('bank_accounts')->insert([
            ['bank_id' => 1, 'owner' => 'Juan Perez', 'cci' => '002-000000000000000000', 'currency_type' => 'Soles'],
            ['bank_id' => 1, 'owner' => 'Juan Perez', 'cci' => '009-000000000000000000', 'currency_type' => 'Dólares'],
            ['bank_id' => 2, 'owner' => 'Juan Perez', 'cci' => '011-000000000000000000', 'currency_type' => 'Soles'],
            ['bank_id' => 2, 'owner' => 'Juan Perez', 'cci' => '011-000000000000000000', 'currency_type' => 'Dólares'],
            ['bank_id' => 3, 'owner' => 'Juan Perez', 'cci' => '002-000000000000000000', 'currency_type' => 'Soles'],
            ['bank_id' => 3, 'owner' => 'Juan Perez', 'cci' => '009-000000000000000000', 'currency_type' => 'Dólares'],
        ]);
    }
}
