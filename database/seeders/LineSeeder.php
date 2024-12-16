<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LineSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('lines')->insert([
            ['name' => 'Abono foliar', 'category' => 'Otros'],
            ['name' => 'Acaricida', 'category' => 'Otros'],
            ['name' => 'Aceite agrícola', 'category' => 'Otros'],
            ['name' => 'Adherente', 'category' => 'Otros'],
            ['name' => 'Bioestimulante', 'category' => 'Otros'],
            ['name' => 'Fungicida', 'category' => 'Otros'],
            ['name' => 'Herbicida', 'category' => 'Otros'],
            ['name' => 'Hormona	Otros', 'category' => 'Otros'],
            ['name' => 'Insecticida', 'category' => 'Otros'],
            ['name' => 'Nematicida', 'category' => 'Otros'],
        ]);
    }
}
