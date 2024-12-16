<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ZoneSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('zones')->insert([
            ['name' => 'Ancash', 'ubigeo_id' => 2625],
            ['name' => 'Barranca', 'ubigeo_id' => 3971],
            ['name' => 'Huaral', 'ubigeo_id' => 4008],
            ['name' => 'Lima', 'ubigeo_id' => 3926],
            ['name' => 'Trujillo', 'ubigeo_id' => 3789],
            ['name' => 'Valle Jequetepeque', 'ubigeo_id' => 3839],
        ]);
    }
}
