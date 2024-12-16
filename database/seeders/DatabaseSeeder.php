<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory()->create([
        //     'name' => 'Admin',
        //     'email' => 'admin@agrologistics.com',
        //     'password' => bcrypt('password'),
        // ]);

        $this->call([
            // LineSeeder::class,
            // ArticleSeeder::class,
            // ZoneSeeder::class,
            // WarehouseSeeder::class,
            // BankSeeder::class,
            // BankAccountSeeder::class,
            // GroupOfConceptsSeeder::class,
            // ConceptSeeder::class,
            // TypeCustomerSeeder::class,
            // SellerSeeder::class,
            // CustomerSeeder::class,
            // SupplierSeeder::class,
            // MoneyTransfersSeeder::class,
            // CustomerCreditsSeeder::class,
            // PurchasesSeeder::class,
            // SalesSeeder::class,
            // DataSeeder::class,
        ]);
    }
}
