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
        Schema::create('purchases', function (Blueprint $table) {
            $table->id();
            $table->foreignId('supplier_id')->constrained('suppliers')->onDelete('cascade');
            $table->foreignId('warehouse_id')->constrained('warehouses')->onDelete('cascade');
            $table->foreignId('payment_receipt_id')->constrained('payment_receipts')->onDelete('cascade')->nullable();
            $table->string('type_document');
            $table->string('payment_receipt_code');
            $table->date('date_of_entry');
            $table->decimal('igv', 5, 2);
            $table->decimal('exchange_rate', 5, 2);
            $table->string('payment_condition');
            $table->string('status');
            $table->string('currency_type');
            $table->text('observation')->nullable();
            $table->decimal('sale_value', 10, 2);
            $table->decimal('total_igv', 10, 2);
            $table->decimal('exonerated', 10, 2);
            $table->decimal('subtotal', 10, 2);
            $table->decimal('total_freight', 10, 2);
            $table->decimal('total', 10, 2);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('purchases');
    }
};
