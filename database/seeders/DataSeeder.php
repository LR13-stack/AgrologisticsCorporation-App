<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Obtener las fechas de creación de las compras
        $purchaseDates = DB::table('sales')->pluck('created_at');

        $takingTimes = [];

        foreach ($purchaseDates as $createdAt) {
            // Parsear la fecha de creación
            $finalDate = Carbon::parse($createdAt);

            // Generar un número aleatorio entre 96 y 215
            $timeInSeconds = rand(105, 298);

            // Calcular la fecha inicial restando los segundos aleatorios de finalDate
            $initialDate = $finalDate->copy()->subSeconds($timeInSeconds);

            // Agregar los datos al array
            $takingTimes[] = [
                'type_document' => 'Venta',
                'initial_date' => $initialDate->toDateTimeString(),
                'final_date' => $finalDate->toDateTimeString(),
                'time_in_seconds' => $timeInSeconds,
            ];
        }

        // Insertar los datos en la tabla taking_times
        DB::table('taking_times')->insert($takingTimes);
    }
}
