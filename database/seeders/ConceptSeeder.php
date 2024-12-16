<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ConceptSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('concepts')->insert([
            ['name' => 'Viáticos', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Alquiler de local', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Compra de mobiliario', 'group_of_concept_id' => 1, 'is_expense' => true],
            ['name' => 'Compra de computadoras', 'group_of_concept_id' => 1, 'is_expense' => true],
            ['name' => 'Compra de certificado SSL', 'group_of_concept_id' => 1, 'is_expense' => true],
            ['name' => 'Cobranza de alquiler', 'group_of_concept_id' => 2, 'is_expense' => false],
            ['name' => 'Compra de software', 'group_of_concept_id' => 1, 'is_expense' => true],
            ['name' => 'Pago de servicios básicos', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Mantenimiento de equipos', 'group_of_concept_id' => 1, 'is_expense' => true],
            ['name' => 'Reparación de mobiliario', 'group_of_concept_id' => 1, 'is_expense' => true],
            ['name' => 'Pago de impuestos', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Consultoría externa', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Pago de honorarios profesionales', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Pago de préstamos bancarios', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Cobranza de préstamos a empleados', 'group_of_concept_id' => 2, 'is_expense' => false],
            ['name' => 'Comisiones de venta', 'group_of_concept_id' => 2, 'is_expense' => false],
            ['name' => 'Venta de activos fijos', 'group_of_concept_id' => 2, 'is_expense' => false],
            ['name' => 'Depreciación de activos', 'group_of_concept_id' => 1, 'is_expense' => true],
            ['name' => 'Pago de seguros', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Adquisición de licencias de software', 'group_of_concept_id' => 1, 'is_expense' => true],
            ['name' => 'Cobro de intereses por préstamos', 'group_of_concept_id' => 2, 'is_expense' => false],
            ['name' => 'Pago de intereses por préstamos', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Capacitación del personal', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Compra de material de oficina', 'group_of_concept_id' => 1, 'is_expense' => true],
            ['name' => 'Gastos de transporte', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Gastos de representación', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Bonificaciones a empleados', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Devoluciones de clientes', 'group_of_concept_id' => 2, 'is_expense' => false],
            ['name' => 'Cobro de indemnizaciones', 'group_of_concept_id' => 2, 'is_expense' => false],
            ['name' => 'Pago de licencias de software', 'group_of_concept_id' => 1, 'is_expense' => true],
            ['name' => 'Adquisición de vehículos', 'group_of_concept_id' => 1, 'is_expense' => true],
            ['name' => 'Cobro por servicios prestados', 'group_of_concept_id' => 2, 'is_expense' => false],
            ['name' => 'Descuento de facturas por cobranza anticipada', 'group_of_concept_id' => 2, 'is_expense' => false],
            ['name' => 'Pago de utilidades a empleados', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Multas y sanciones', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Recuperación de deudas incobrables', 'group_of_concept_id' => 2, 'is_expense' => false],
            ['name' => 'Donaciones recibidas', 'group_of_concept_id' => 2, 'is_expense' => false],
            ['name' => 'Ajustes por diferencia de inventario', 'group_of_concept_id' => 1, 'is_expense' => true],
            ['name' => 'Pago de comisiones bancarias', 'group_of_concept_id' => 4, 'is_expense' => true],
            ['name' => 'Ingresos por regalías', 'group_of_concept_id' => 2, 'is_expense' => false],
            ['name' => 'Subvenciones gubernamentales', 'group_of_concept_id' => 2, 'is_expense' => false],
            ['name' => 'Transferencias internas', 'group_of_concept_id' => 2, 'is_expense' => false],
        ]);
    }
}
