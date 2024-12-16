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
        Schema::create('article_transfer_details', function (Blueprint $table) {
            $table->id();
            $table->foreignId('article_transfer_id')->constrained('article_transfers')->onDelete('cascade');
            $table->foreignId('inventary_id')->constrained('inventories')->onDelete('cascade');
            $table->integer('quantity');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('article_transfer_details');
    }
};
