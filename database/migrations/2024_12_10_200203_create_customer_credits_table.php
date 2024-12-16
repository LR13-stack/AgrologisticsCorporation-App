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
        Schema::create('customer_credits', function (Blueprint $table) {
            $table->id();
            $table->foreignId('customer_id')->constrained()->onDelete('cascade');
            $table->foreignId('seller_id')->constrained('sellers')->onDelete('cascade');
            $table->decimal('credit_limit', 10, 2);
            $table->decimal('credit_used', 10, 2)->default(0);
            $table->decimal('credit_remaining', 10, 2)->default(0);
            $table->boolean('is_active')->default(true);
            $table->foreignId('payment_receipt_id')->nullable()->constrained('payment_receipts')->onDelete('set null');
            $table->string('currency_type');
            $table->decimal('exchange_rate', 5, 2);
            $table->date('die_date');
            $table->text('observation')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('customer_credits');
    }
};
