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
        Schema::create('payment_receipts', function (Blueprint $table) {
            $table->id();
            $table->string('code');
            $table->string('type_document');
            $table->string('url_qr');
            $table->decimal('advances', 10, 2);
            $table->decimal('free_ops', 10, 2);
            $table->decimal('taxed_ops', 10, 2);
            $table->decimal('op_tax_free', 10, 2);
            $table->decimal('op_exempt_ops', 10, 2);
            $table->decimal('vat', 10, 2);
            $table->decimal('discounts', 10, 2);
            $table->decimal('total', 10, 2);
            $table->string('status');
            $table->text('observation')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('payment_receipts');
    }
};
