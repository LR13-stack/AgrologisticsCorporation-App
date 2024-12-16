<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SellerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('sellers')->insert([
            ['name' => 'Miguel Honorio Puyol', 'document_number' => '74759621', 'address' => 'Jr. Tacna 143, Chepen', 'phone' => '951414223', 'ubigeo_id' => 3817],
            ['name' => 'José Luis Quispe', 'document_number' => '74859632', 'address' => 'Av. Los Héroes 456, Trujillo', 'phone' => '951678123', 'ubigeo_id' => 3789],
            ['name' => 'Ana María Flores', 'document_number' => '75841236', 'address' => 'Jr. Independencia 321, Chiclayo', 'phone' => '981456789', 'ubigeo_id' => 3885],
            ['name' => 'Juan Carlos Pérez', 'document_number' => '76812345', 'address' => 'Calle Los Robles 789, Piura', 'phone' => '911234567', 'ubigeo_id' => 4236],
            ['name' => 'María del Carmen Rojas', 'document_number' => '77451236', 'address' => 'Jr. Las Gardenias 654, Arequipa', 'phone' => '921345678', 'ubigeo_id' => 2900],
            ['name' => 'Luis Alberto Huamán', 'document_number' => '78459621', 'address' => 'Av. América Sur 567, Cusco', 'phone' => '931456789', 'ubigeo_id' => 3292],
            ['name' => 'Diana Katherine Vargas', 'document_number' => '79481236', 'address' => 'Jr. La Merced 123, Cajamarca', 'phone' => '941234567', 'ubigeo_id' => 3143],
            ['name' => 'Pedro Martín Sánchez', 'document_number' => '70451236', 'address' => 'Av. Los Olivos 876, Huánuco', 'phone' => '951456789', 'ubigeo_id' => 3518],
            ['name' => 'Rosa Elizabeth Gutiérrez', 'document_number' => '71485692', 'address' => 'Jr. Ayacucho 654, Cusco', 'phone' => '961234567', 'ubigeo_id' => 3292],
            ['name' => 'Jorge Antonio Castillo', 'document_number' => '72459836', 'address' => 'Calle Los Pinos 432, Tarapoto', 'phone' => '971456789', 'ubigeo_id' => 4499],
            ['name' => 'Carla Vanessa Chacón', 'document_number' => '73412958', 'address' => 'Av. Aviación 345, Lima', 'phone' => '981234567', 'ubigeo_id' => 3926],
            ['name' => 'Miguel Ángel Vilca', 'document_number' => '74456821', 'address' => 'Jr. Los Nogales 234, Huancayo', 'phone' => '991456789', 'ubigeo_id' => 3656],
            ['name' => 'Lucía Fernanda Yupanqui', 'document_number' => '75412368', 'address' => 'Av. Larco 654, Trujillo', 'phone' => '901234567', 'ubigeo_id' => 3789],
        ]);
    }
}
