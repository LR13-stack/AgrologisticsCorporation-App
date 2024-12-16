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
        Schema::create('customers', function (Blueprint $table) {
            $table->id();
            $table->string('company_name');
            $table->foreignId('type_id')->constrained('type_of_customers')->onDelete('cascade');
            $table->string('type_document');
            $table->string('document_number');
            $table->string('address');
            $table->foreignId('zone_id')->constrained('zones')->onDelete('cascade');
            $table->foreignId('ubigeo_id')->constrained('ubigeos')->onDelete('cascade');
            $table->string('phone_number');
            $table->string('email');
            $table->foreignId('manager_id')->constrained('sellers')->onDelete('cascade');
            $table->string('status');
            $table->decimal('credit_limit', 10, 2);
            $table->string('cultivation')->nullable();
            $table->string('hectareas')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('customers');
    }
};
