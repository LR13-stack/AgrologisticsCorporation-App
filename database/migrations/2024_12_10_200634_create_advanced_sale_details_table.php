<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('advanced_sale_details', function (Blueprint $table) {
            $table->id();
            $table->foreignId('advanced_sale_id')->constrained('advanced_sales')->onDelete('cascade');
            $table->foreignId('inventary_id')->constrained('inventories')->onDelete('cascade');
            $table->integer('quantity');
            $table->decimal('unit_price', 10, 2);
            $table->decimal('total', 10, 2);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('advanced_sale_details');
    }
};
