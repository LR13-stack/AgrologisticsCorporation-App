<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TypeCustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('type_of_customers')->insert([
            ['name' => 'Cartera Pesada'],
            ['name' => 'Tiendas'],
            ['name' => 'Agricultores'],
            ['name' => 'Mayoristas'],
        ]);
    }
}
