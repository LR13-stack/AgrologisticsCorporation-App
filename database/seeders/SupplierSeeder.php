<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SupplierSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('suppliers')->insert([
            ['company_name' => 'Comercializadora El Sol S.A.C.', 'type_document' => 'RUC', 'document_number' => '20145678912', 'address' => 'Av. Los Próceres 456, Trujillo', 'ubigeo_id' => 3789, 'phone' => '987654321'],
            ['company_name' => 'Distribuidora Perú EIRL', 'type_document' => 'RUC', 'document_number' => '20158794321', 'address' => 'Jr. Independencia 321, Chiclayo', 'ubigeo_id' => 3885, 'phone' => '956741852'],
            ['company_name' => 'Agroinsumos del Norte S.A.C.', 'type_document' => 'RUC', 'document_number' => '20123456789', 'address' => 'Calle Los Olivos 789, Piura', 'ubigeo_id' => 4236, 'phone' => '923654789'],
            ['company_name' => 'Inversiones y Servicios Andinos S.R.L.', 'type_document' => 'RUC', 'document_number' => '20459876321', 'address' => 'Av. La Marina 654, Arequipa', 'ubigeo_id' => 2900, 'phone' => '912345678'],
            ['company_name' => 'Maquinaria del Sur S.A.C.', 'type_document' => 'RUC', 'document_number' => '20598765432', 'address' => 'Av. América Sur 567, Cusco', 'ubigeo_id' => 3292, 'phone' => '965478123'],
            ['company_name' => 'Proveedora Industrial del Centro S.R.L.', 'type_document' => 'RUC', 'document_number' => '20347895621', 'address' => 'Av. La Merced 123, Cajamarca', 'ubigeo_id' => 3143, 'phone' => '974561238'],
            ['company_name' => 'Distribuciones Globales EIRL', 'type_document' => 'RUC', 'document_number' => '20654321789', 'address' => 'Av. Los Olivos 876, Huánuco', 'ubigeo_id' => 3518, 'phone' => '986745123'],
            ['company_name' => 'Transportes del Pacífico S.A.C.', 'type_document' => 'RUC', 'document_number' => '20765438912', 'address' => 'Jr. Tacna 143, Chepén', 'ubigeo_id' => 3817, 'phone' => '977654321'],
            ['company_name' => 'Almacenes y Depósitos del Norte S.A.C.', 'type_document' => 'RUC', 'document_number' => '20876543219', 'address' => 'Av. Los Cedros 432, Tarapoto', 'ubigeo_id' => 4499, 'phone' => '934567812'],
            ['company_name' => 'Importadora Global S.A.', 'type_document' => 'RUC', 'document_number' => '20987654321', 'address' => 'Av. Aviación 345, Lima', 'ubigeo_id' => 3292, 'phone' => '921347856'],
            ['company_name' => 'Industrias Alimenticias Los Andes S.A.C.', 'type_document' => 'RUC', 'document_number' => '20111234567', 'address' => 'Jr. Los Nogales 234, Huancayo', 'ubigeo_id' => 3656, 'phone' => '914785632'],
            ['company_name' => 'Fábrica de Envases del Sur EIRL', 'type_document' => 'RUC', 'document_number' => '20233456789', 'address' => 'Av. Larco 654, Trujillo', 'ubigeo_id' => 3789, 'phone' => '998765412'],
            ['company_name' => 'Servicios Logísticos Integrales S.A.', 'type_document' => 'RUC', 'document_number' => '20355678912', 'address' => 'Av. Grau 890, Piura', 'ubigeo_id' => 4236, 'phone' => '945672813'],
            ['company_name' => 'Comercializadora Mixtura S.A.C.', 'type_document' => 'RUC', 'document_number' => '20467891234', 'address' => 'Calle Principal 345, Arequipa', 'ubigeo_id' => 2900, 'phone' => '965487123'],
            ['company_name' => 'Insumos Agrícolas del Sur EIRL', 'type_document' => 'RUC', 'document_number' => '20578912345', 'address' => 'Av. Del Agricultor 876, Cusco', 'ubigeo_id' => 3292, 'phone' => '921478536'],
            ['company_name' => 'Exportadora de Frutas Andinas S.A.C.', 'type_document' => 'RUC', 'document_number' => '20689123456', 'address' => 'Av. La Explanada 123, Cajamarca', 'ubigeo_id' => 3143, 'phone' => '987562341'],
            ['company_name' => 'Proveedores Mineros del Perú S.R.L.', 'type_document' => 'RUC', 'document_number' => '20791234567', 'address' => 'Av. Minería 567, Puno', 'ubigeo_id' => 4309, 'phone' => '953761248'],
            ['company_name' => 'Agroexportaciones del Norte S.A.C.', 'type_document' => 'RUC', 'document_number' => '20813456789', 'address' => 'Jr. Exportación 678, Tarapoto', 'ubigeo_id' => 4499, 'phone' => '976543218'],
            ['company_name' => 'Equipos y Herramientas Industriales EIRL', 'type_document' => 'RUC', 'document_number' => '20915678901', 'address' => 'Av. El Comercio 321, Lima', 'ubigeo_id' => 3926, 'phone' => '961235874'],
            ['company_name' => 'Distribuidora de Abarrotes S.A.C.', 'type_document' => 'RUC', 'document_number' => '20816789432', 'address' => 'Av. La Cultura 789, Cusco', 'ubigeo_id' => 3292, 'phone' => '918274563']
        ]);
    }
}
