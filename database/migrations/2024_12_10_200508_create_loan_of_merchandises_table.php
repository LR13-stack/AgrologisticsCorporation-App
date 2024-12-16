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
        Schema::create('loan_of_merchandises', function (Blueprint $table) {
            $table->id();
            $table->foreignId('customer_id')->constrained('customers')->onDelete('cascade');
            $table->foreignId('warehouse_id')->constrained('warehouses')->onDelete('cascade');
            $table->foreignId('seller_id')->constrained('sellers')->onDelete('cascade');
            $table->foreignId('payment_receipt_id')->constrained('payment_receipts')->onDelete('cascade')->nullable();
            $table->string('type_document');
            $table->string('payment_receipt_code');
            $table->decimal('igv', 5, 2);
            $table->string('payment_condition');
            $table->string('status');
            $table->text('observation')->nullable();
            $table->decimal('sale_value', 10, 2);
            $table->decimal('total_igv', 10, 2);
            $table->decimal('exonerated', 10, 2);
            $table->decimal('total', 10, 2);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('loan_of_merchandises');
    }
};
