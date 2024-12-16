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
        Schema::create('article_transfers', function (Blueprint $table) {
            $table->id();
            $table->foreignId('warehouse_origin_id')->constrained('warehouses')->onDelete('cascade');
            $table->foreignId('warehouse_destination_id')->constrained('warehouses')->onDelete('cascade');
            $table->string('observation')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('article_transfers');
    }
};
