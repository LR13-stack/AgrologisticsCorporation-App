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
        Schema::create('money_transfers', function (Blueprint $table) {
            $table->id();
            $table->string('code');
            $table->decimal('amount', 10, 2);
            $table->foreignId('source_account_id')->constrained('bank_accounts')->onDelete('cascade');
            $table->foreignId('destination_account_id')->constrained('bank_accounts')->onDelete('cascade');
            $table->decimal('exchange_rate', 5, 2);
            $table->text('observation')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('money_transfers');
    }
};
