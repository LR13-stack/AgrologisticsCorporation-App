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
        Schema::create('customer_amortizations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('credit_customer_id')->constrained('customer_credits')->onDelete('cascade');
            $table->foreignId('payment_receipt_id')->constrained('payment_receipts')->onDelete('cascade')->nullable();
            $table->foreignId('bank_account_id')->constrained('bank_accounts')->onDelete('cascade');
            $table->string('currency_type');
            $table->string('bank');
            $table->string('customer');
            $table->decimal('amount', 10, 2);
            $table->text('observation')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('customer_amortizations');
    }
};
