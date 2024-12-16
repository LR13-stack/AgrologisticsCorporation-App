<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ArticleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        // Lista de artículos con su respectivo line_id (1, 2, 3, 4, etc.)
        $articles = [
            ['name' => 'Foliar Max', 'line_id' => 1],
            ['name' => 'Foliar Grow', 'line_id' => 1],
            ['name' => 'Foliar Boost', 'line_id' => 1],

            ['name' => 'Acaricida Plus', 'line_id' => 2],
            ['name' => 'Acaricida Ultra', 'line_id' => 2],
            ['name' => 'Acaricida Forte', 'line_id' => 2],

            ['name' => 'Aceite Gold', 'line_id' => 3],
            ['name' => 'Aceite Supreme', 'line_id' => 3],
            ['name' => 'Aceite Shield', 'line_id' => 3],

            ['name' => 'Adherente Pro', 'line_id' => 4],
            ['name' => 'Adherente Super', 'line_id' => 4],
            ['name' => 'Adherente Max', 'line_id' => 4],

            ['name' => 'Bioestimulante Green', 'line_id' => 5],
            ['name' => 'Bioestimulante Power', 'line_id' => 5],
            ['name' => 'Bioestimulante Eco', 'line_id' => 5],

            ['name' => 'Fungicida Ultra', 'line_id' => 6],
            ['name' => 'Fungicida Plus', 'line_id' => 6],
            ['name' => 'Fungicida Shield', 'line_id' => 6],

            ['name' => 'Herbicida Pro', 'line_id' => 7],
            ['name' => 'Herbicida Ultra', 'line_id' => 7],
            ['name' => 'Herbicida Gold', 'line_id' => 7],

            ['name' => 'Hormona Max', 'line_id' => 8],
            ['name' => 'Hormona Grow', 'line_id' => 8],
            ['name' => 'Hormona Boost', 'line_id' => 8],

            ['name' => 'Insecticida Plus', 'line_id' => 9],
            ['name' => 'Insecticida Shield', 'line_id' => 9],
            ['name' => 'Insecticida Supreme', 'line_id' => 9],

            ['name' => 'Nematicida Power', 'line_id' => 10],
            ['name' => 'Nematicida Control', 'line_id' => 10],
            ['name' => 'Nematicida Defense', 'line_id' => 10],
        ];

        // Generar la lista de registros de artículos
        $articleRecords = array_map(function($article) {
            return [
                'name' => $article['name'],
                'line_id' => $article['line_id'],
                'costs' => rand(100, 500),
                'expenses' => rand(10, 50),
                'costs_plus_expenses' => 0,
                'sale_price' => 0,
                'sale_shop' => rand(150, 600),
                'sale_wholesale' => rand(100, 500),
                'is_exonerated' => rand(0, 1),
                'created_at' => now(),
                'updated_at' => now(),
            ];
        }, $articles);

        // Calcular el 'costs_plus_expenses' y el 'sale_price'
        $articleRecords = array_map(function($record) {
            $record['costs_plus_expenses'] = $record['costs'] + $record['expenses'];
            $record['sale_price'] = $record['costs_plus_expenses'] * 1.2; // 20% de ganancia
            return $record;
        }, $articleRecords);

        // Insertar los artículos en la base de datos
        DB::table('articles')->insert($articleRecords);
    }
}
