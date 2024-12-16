<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class GroupOfConceptsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('group_of_concepts')->insert([
            ['name' => 'Activos fijos', 'is_expense' => true],
            ['name' => 'Aumento de capital social', 'is_expense' => false],
            ['name' => 'Detracciones', 'is_expense' => false],
            ['name' => 'Gastos', 'is_expense' => true],
            ['name' => 'Movimientos internos', 'is_expense' => false],
            ['name' => 'Pago de letra', 'is_expense' => false],
            ['name' => 'Portes bancarios', 'is_expense' => true],
            ['name' => 'Retenciones', 'is_expense' => false],
            ['name' => 'Servicios contables', 'is_expense' => false],
        ]);
    }
}
