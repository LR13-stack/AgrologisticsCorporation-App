<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('customers')->insert([
            ['company_name' => 'Corporación Andina S.A.', 'type_id' => 1, 'type_document' => 'RUC', 'document_number' => '20100111111', 'address' => 'Av. Los Andes 456', 'zone_id' => 1, 'ubigeo_id' => 2625, 'phone_number' => '987654321', 'email' => 'contacto@andina.com', 'manager_id' => 1, 'status' => 'Activo', 'credit_limit' => 50000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Distribuidora Pacífico', 'type_id' => 1, 'type_document' => 'RUC', 'document_number' => '20100122222', 'address' => 'Jr. Amazonas 321', 'zone_id' => 2, 'ubigeo_id' => 3971, 'phone_number' => '912345678', 'email' => 'ventas@pacifico.com', 'manager_id' => 2, 'status' => 'Activo', 'credit_limit' => 40000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Inversiones del Norte SAC', 'type_id' => 1, 'type_document' => 'RUC', 'document_number' => '20100133333', 'address' => 'Av. Javier Prado 789', 'zone_id' => 3, 'ubigeo_id' => 4008, 'phone_number' => '923456789', 'email' => 'info@nortesac.com', 'manager_id' => 3, 'status' => 'Activo', 'credit_limit' => 70000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Comercializadora Horizonte', 'type_id' => 1, 'type_document' => 'RUC', 'document_number' => '20100144444', 'address' => 'Av. El Sol 123', 'zone_id' => 4, 'ubigeo_id' => 3926, 'phone_number' => '945678901', 'email' => 'ventas@horizonte.com', 'manager_id' => 4, 'status' => 'Activo', 'credit_limit' => 90000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Multiservicios Elite SAC', 'type_id' => 1, 'type_document' => 'RUC', 'document_number' => '20100155555', 'address' => 'Jr. Arequipa 456', 'zone_id' => 5, 'ubigeo_id' => 3789, 'phone_number' => '934567890', 'email' => 'contacto@elite.com', 'manager_id' => 5, 'status' => 'Activo', 'credit_limit' => 60000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Consorcio de Negocios', 'type_id' => 1, 'type_document' => 'RUC', 'document_number' => '20100166666', 'address' => 'Av. Las Palmeras 321', 'zone_id' => 1, 'ubigeo_id' => 2625, 'phone_number' => '976543210', 'email' => 'info@consorcionegocios.com', 'manager_id' => 6, 'status' => 'Activo', 'credit_limit' => 50000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Global Market SAC', 'type_id' => 1, 'type_document' => 'RUC', 'document_number' => '20100177777', 'address' => 'Jr. Cusco 147', 'zone_id' => 2, 'ubigeo_id' => 3971, 'phone_number' => '987654312', 'email' => 'ventas@globalmarket.com', 'manager_id' => 2, 'status' => 'Activo', 'credit_limit' => 40000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Corporación Sol de Oro', 'type_id' => 1, 'type_document' => 'RUC', 'document_number' => '20100188888', 'address' => 'Av. Sol de Oro 78', 'zone_id' => 3, 'ubigeo_id' => 4008, 'phone_number' => '901234567', 'email' => 'contacto@soldeoro.com', 'manager_id' => 3, 'status' => 'Activo', 'credit_limit' => 30000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Distribuciones Unidas SAC', 'type_id' => 1, 'type_document' => 'RUC', 'document_number' => '20100199999', 'address' => 'Jr. Progreso 213', 'zone_id' => 4, 'ubigeo_id' => 3926, 'phone_number' => '923456987', 'email' => 'info@unidassac.com', 'manager_id' => 4, 'status' => 'Activo', 'credit_limit' => 75000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Comercial Santa Rosa', 'type_id' => 1, 'type_document' => 'RUC', 'document_number' => '20100200000', 'address' => 'Av. Santa Rosa 560', 'zone_id' => 5, 'ubigeo_id' => 3789, 'phone_number' => '965432178', 'email' => 'ventas@santarosa.com', 'manager_id' => 5, 'status' => 'Activo', 'credit_limit' => 80000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Tienda La Esperanza', 'type_id' => 2, 'type_document' => 'RUC', 'document_number' => '20100333333', 'address' => 'Av. San Martín 678', 'zone_id' => 1, 'ubigeo_id' => 2625, 'phone_number' => '934567890', 'email' => 'info@laesperanza.com', 'manager_id' => 6, 'status' => 'Activo', 'credit_limit' => 15000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Comercial El Sol', 'type_id' => 2, 'type_document' => 'RUC', 'document_number' => '20100444444', 'address' => 'Jr. Manco Cápac 890', 'zone_id' => 2, 'ubigeo_id' => 3971, 'phone_number' => '923456789', 'email' => 'ventas@elsol.com', 'manager_id' => 2, 'status' => 'Activo', 'credit_limit' => 20000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Comercial Santa Cruz', 'type_id' => 2, 'type_document' => 'RUC', 'document_number' => '20100455555', 'address' => 'Jr. Santa Cruz 200', 'zone_id' => 3, 'ubigeo_id' => 4008, 'phone_number' => '945678123', 'email' => 'ventas@santacruz.com', 'manager_id' => 3, 'status' => 'Activo', 'credit_limit' => 25000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Supermercado El Comercio', 'type_id' => 2, 'type_document' => 'RUC', 'document_number' => '20100466666', 'address' => 'Av. Los Héroes 985', 'zone_id' => 1, 'ubigeo_id' => 2625, 'phone_number' => '912345678', 'email' => 'info@elcomercio.com', 'manager_id' => 13, 'status' => 'Activo', 'credit_limit' => 30000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'MiniMarket Central', 'type_id' => 2, 'type_document' => 'RUC', 'document_number' => '20100477777', 'address' => 'Jr. Ayacucho 567', 'zone_id' => 2, 'ubigeo_id' => 3971, 'phone_number' => '956789012', 'email' => 'ventas@minicentral.com', 'manager_id' => 2, 'status' => 'Activo', 'credit_limit' => 12000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Bazar Universal', 'type_id' => 2, 'type_document' => 'RUC', 'document_number' => '20100488888', 'address' => 'Av. Las Palmeras 452', 'zone_id' => 3, 'ubigeo_id' => 4008, 'phone_number' => '987654321', 'email' => 'info@bazaruniversal.com', 'manager_id' => 3, 'status' => 'Activo', 'credit_limit' => 18000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Tienda MegaOfertas', 'type_id' => 2, 'type_document' => 'RUC', 'document_number' => '20100499999', 'address' => 'Jr. Lima 123', 'zone_id' => 4, 'ubigeo_id' => 3926, 'phone_number' => '912345876', 'email' => 'ventas@megaofertas.com', 'manager_id' => 13, 'status' => 'Activo', 'credit_limit' => 28000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Tienda La Moderna', 'type_id' => 2, 'type_document' => 'RUC', 'document_number' => '20100500000', 'address' => 'Av. Grau 250', 'zone_id' => 5, 'ubigeo_id' => 3789, 'phone_number' => '934567123', 'email' => 'ventas@lamoderna.com', 'manager_id' => 5, 'status' => 'Activo', 'credit_limit' => 21000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Almacén San José', 'type_id' => 2, 'type_document' => 'RUC', 'document_number' => '20100511111', 'address' => 'Jr. Cuzco 891', 'zone_id' => 2, 'ubigeo_id' => 3971, 'phone_number' => '923456789', 'email' => 'ventas@sanjose.com', 'manager_id' => 2, 'status' => 'Activo', 'credit_limit' => 17000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Ferretería Los Andes', 'type_id' => 2, 'type_document' => 'RUC', 'document_number' => '20100522222', 'address' => 'Av. Los Andes 999', 'zone_id' => 3, 'ubigeo_id' => 4008, 'phone_number' => '976543210', 'email' => 'info@ferreteriaandina.com', 'manager_id' => 3, 'status' => 'Activo', 'credit_limit' => 15000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'AgroExport Chavín', 'type_id' => 3, 'type_document' => 'RUC', 'document_number' => '20200333333', 'address' => 'Fundo Los Álamos, Sector Chavín', 'zone_id' => 2, 'ubigeo_id' => 3971, 'phone_number' => '914567890', 'email' => 'info@agrochavin.com', 'manager_id' => 1, 'status' => 'Activo', 'credit_limit' => 25000.00, 'cultivation' => 'Palta', 'hectareas' => '150'],
            ['company_name' => 'Agrícola La Ribera', 'type_id' => 3, 'type_document' => 'RUC', 'document_number' => '20200444444', 'address' => 'Fundo La Ribera, Valle de Chao', 'zone_id' => 3, 'ubigeo_id' => 4008, 'phone_number' => '924567890', 'email' => 'ventas@laribera.com', 'manager_id' => 7, 'status' => 'Activo', 'credit_limit' => 18000.00, 'cultivation' => 'Arándano', 'hectareas' => '90'],
            ['company_name' => 'Productores Andinos SAC', 'type_id' => 3, 'type_document' => 'RUC', 'document_number' => '20200455555', 'address' => 'Av. Las Lomas, Sector Andahuasi', 'zone_id' => 4, 'ubigeo_id' => 3926, 'phone_number' => '934567890', 'email' => 'contacto@productoresandinos.com', 'manager_id' => 3, 'status' => 'Activo', 'credit_limit' => 30000.00, 'cultivation' => 'Papa', 'hectareas' => '120'],
            ['company_name' => 'Agrícola Los Olivos', 'type_id' => 3, 'type_document' => 'RUC', 'document_number' => '20200466666', 'address' => 'Fundo Los Olivos, Sector Moche', 'zone_id' => 1, 'ubigeo_id' => 2625, 'phone_number' => '944567890', 'email' => 'info@agricolalosolivos.com', 'manager_id' => 1, 'status' => 'Activo', 'credit_limit' => 40000.00, 'cultivation' => 'Olivo', 'hectareas' => '200'],
            ['company_name' => 'Fundo El Paraíso', 'type_id' => 3, 'type_document' => 'RUC', 'document_number' => '20200477777', 'address' => 'Fundo El Paraíso, Valle de Virú', 'zone_id' => 5, 'ubigeo_id' => 3789, 'phone_number' => '954567890', 'email' => 'contacto@fundoelparaiso.com', 'manager_id' => 12, 'status' => 'Activo', 'credit_limit' => 20000.00, 'cultivation' => 'Uva', 'hectareas' => '50'],
            ['company_name' => 'Consorcio Agrario del Norte', 'type_id' => 3, 'type_document' => 'RUC', 'document_number' => '20200488888', 'address' => 'Av. Los Maizales 123, Distrito de Chepén', 'zone_id' => 2, 'ubigeo_id' => 3971, 'phone_number' => '964567890', 'email' => 'ventas@consorcioagronorte.com', 'manager_id' => 2, 'status' => 'Activo', 'credit_limit' => 15000.00, 'cultivation' => 'Maíz', 'hectareas' => '60'],
            ['company_name' => 'Exportaciones del Sur SAC', 'type_id' => 3, 'type_document' => 'RUC', 'document_number' => '20200499999', 'address' => 'Fundo Los Cerros, Cañete', 'zone_id' => 3, 'ubigeo_id' => 4008, 'phone_number' => '974567890', 'email' => 'ventas@exportsursac.com', 'manager_id' => 3, 'status' => 'Activo', 'credit_limit' => 50000.00, 'cultivation' => 'Espárrago', 'hectareas' => '200'],
            ['company_name' => 'Agro Santa Elena', 'type_id' => 3, 'type_document' => 'RUC', 'document_number' => '20200500000', 'address' => 'Fundo Santa Elena, Huaral', 'zone_id' => 4, 'ubigeo_id' => 3926, 'phone_number' => '984567890', 'email' => 'contacto@agrosantaelena.com', 'manager_id' => 4, 'status' => 'Activo', 'credit_limit' => 28000.00, 'cultivation' => 'Cítricos', 'hectareas' => '100'],
            ['company_name' => 'Cooperativa Agraria Nuevo Horizonte', 'type_id' => 3, 'type_document' => 'RUC', 'document_number' => '20200511111', 'address' => 'Comunidad Nuevo Horizonte, Sector Huaylas', 'zone_id' => 5, 'ubigeo_id' => 3789, 'phone_number' => '994567890', 'email' => 'ventas@coopnuevahorizonte.com', 'manager_id' => 5, 'status' => 'Activo', 'credit_limit' => 22000.00, 'cultivation' => 'Café', 'hectareas' => '80'],
            ['company_name' => 'Asociación de Productores de Cacao', 'type_id' => 3, 'type_document' => 'RUC', 'document_number' => '20200522222', 'address' => 'Fundo El Cacao, Sector Tarapoto', 'zone_id' => 1, 'ubigeo_id' => 2625, 'phone_number' => '904567890', 'email' => 'contacto@produtcacaoperu.com', 'manager_id' => 1, 'status' => 'Activo', 'credit_limit' => 27000.00, 'cultivation' => 'Cacao', 'hectareas' => '75'],
            ['company_name' => 'Distribuidora Santa Rosa', 'type_id' => 4, 'type_document' => 'RUC', 'document_number' => '20456789012', 'address' => 'Av. Los Laureles 456, Trujillo', 'zone_id' => 1, 'ubigeo_id' => 2625, 'phone_number' => '912345678', 'email' => 'ventas@santarosadistribuidora.com', 'manager_id' => 2, 'status' => 'Activo', 'credit_limit' => 50000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Mayorista El Progreso', 'type_id' => 4, 'type_document' => 'RUC', 'document_number' => '20457890123', 'address' => 'Jr. El Comercio 123, Chiclayo', 'zone_id' => 2, 'ubigeo_id' => 3971, 'phone_number' => '922345678', 'email' => 'contacto@mayoristaelprogreso.com', 'manager_id' => 8, 'status' => 'Activo', 'credit_limit' => 40000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Comercializadora Los Andes', 'type_id' => 4, 'type_document' => 'RUC', 'document_number' => '20458901234', 'address' => 'Av. Los Andes 234, Huaraz', 'zone_id' => 3, 'ubigeo_id' => 4008, 'phone_number' => '932345678', 'email' => 'info@comercializadoraandes.com', 'manager_id' => 1, 'status' => 'Activo', 'credit_limit' => 45000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Mercados del Norte S.A.', 'type_id' => 4, 'type_document' => 'RUC', 'document_number' => '20459012345', 'address' => 'Av. Principal 789, Piura', 'zone_id' => 4, 'ubigeo_id' => 3926, 'phone_number' => '942345678', 'email' => 'ventas@mercadosdelnorte.com', 'manager_id' => 2, 'status' => 'Activo', 'credit_limit' => 60000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Distribuidora Central EIRL', 'type_id' => 4, 'type_document' => 'RUC', 'document_number' => '20460123456', 'address' => 'Jr. Los Olivos 567, Cajamarca', 'zone_id' => 5, 'ubigeo_id' => 3789, 'phone_number' => '952345678', 'email' => 'contacto@distribuidoracentral.com', 'manager_id' => 4, 'status' => 'Activo', 'credit_limit' => 70000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Centro Mayorista Huánuco', 'type_id' => 4, 'type_document' => 'RUC', 'document_number' => '20461234567', 'address' => 'Av. La Unión 876, Huánuco', 'zone_id' => 3, 'ubigeo_id' => 4008, 'phone_number' => '962345678', 'email' => 'info@centromayoristahuanuco.com', 'manager_id' => 11, 'status' => 'Activo', 'credit_limit' => 30000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Comercial El Triunfo', 'type_id' => 4, 'type_document' => 'RUC', 'document_number' => '20462345678', 'address' => 'Jr. Las Lomas 234, Pucallpa', 'zone_id' => 1, 'ubigeo_id' => 2625, 'phone_number' => '972345678', 'email' => 'ventas@comercialeltriunfo.com', 'manager_id' => 9, 'status' => 'Activo', 'credit_limit' => 55000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Importadora San Jorge', 'type_id' => 4, 'type_document' => 'RUC', 'document_number' => '20463456789', 'address' => 'Av. San Jorge 345, Tarapoto', 'zone_id' => 2, 'ubigeo_id' => 3971, 'phone_number' => '982345678', 'email' => 'info@importadorasanjorge.com', 'manager_id' => 3, 'status' => 'Activo', 'credit_limit' => 80000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Distribuidora Los Cedros', 'type_id' => 4, 'type_document' => 'RUC', 'document_number' => '20464567890', 'address' => 'Jr. Los Cedros 987, Arequipa', 'zone_id' => 4, 'ubigeo_id' => 3926, 'phone_number' => '992345678', 'email' => 'contacto@distribuidoraloscedros.com', 'manager_id' => 4, 'status' => 'Activo', 'credit_limit' => 65000.00, 'cultivation' => null, 'hectareas' => null],
            ['company_name' => 'Almacenes La Fortuna', 'type_id' => 4, 'type_document' => 'RUC', 'document_number' => '20465678901', 'address' => 'Av. La Fortuna 654, Cusco', 'zone_id' => 5, 'ubigeo_id' => 3789, 'phone_number' => '902345678', 'email' => 'ventas@almaceneslafortuna.com', 'manager_id' => 10, 'status' => 'Activo', 'credit_limit' => 75000.00, 'cultivation' => null, 'hectareas' => null]
        ]);
    }
}