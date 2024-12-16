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
        Schema::create('articles', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->foreignId('line_id')->constrained('lines')->onDelete('cascade');
            $table->decimal('costs', 10, 2);
            $table->decimal('expenses', 10, 2);
            $table->decimal('costs_plus_expenses', 10, 2);
            $table->decimal('sale_price', 10, 2);
            $table->decimal('sale_shop', 10, 2);
            $table->decimal('sale_wholesale', 10, 2);
            $table->boolean('is_exonerated');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('articles');
    }
};
