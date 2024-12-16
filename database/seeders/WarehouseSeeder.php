<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class WarehouseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('warehouses')->insert([
            ['name' => 'Almacén Barranca', 'address' => 'Av. Grau 123, Barranca', 'zone_id' => 2],
            ['name' => 'Almacén Callejón de Huaylas', 'address' => 'Jr. Huascarán 456, Huaraz', 'zone_id' => 1],
            ['name' => 'Almacén Chepén', 'address' => 'Av. La Libertad 789, Chepén', 'zone_id' => 6],
            ['name' => 'Almacén Chiclayo', 'address' => 'Jr. Elías Aguirre 101, Chiclayo', 'zone_id' => 6],
            ['name' => 'Almacén Chimbote', 'address' => 'Av. José Pardo 202, Chimbote', 'zone_id' => 4],
            ['name' => 'Almacén Guadalupe', 'address' => 'Jr. Independencia 303, Guadalupe', 'zone_id' => 6],
            ['name' => 'Almacén Huaral', 'address' => 'Av. Circunvalación Sur 404, Huaral', 'zone_id' => 3],
            ['name' => 'Almacén Jequetepeque', 'address' => 'Av. Principal 505, Jequetepeque', 'zone_id' => 6],
            ['name' => 'Almacén Trujillo', 'address' => 'Jr. Pizarro 606, Trujillo', 'zone_id' => 5],
        ]);
    }
}
