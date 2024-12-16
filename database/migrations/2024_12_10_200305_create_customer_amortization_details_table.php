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
        Schema::create('customer_amortization_details', function (Blueprint $table) {
            $table->id();
            $table->foreignId('customer_amortization_id')->constrained('customer_amortizations')->onDelete('cascade');
            $table->foreignId('payment_receipt_id')->constrained('payment_receipts')->onDelete('cascade')->nullable();
            $table->date('due_date');
            $table->decimal('balance', 10, 2);
            $table->decimal('amortization', 10, 2);
            $table->decimal('final_balance', 10, 2);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('customer_amortization_details');
    }
};
