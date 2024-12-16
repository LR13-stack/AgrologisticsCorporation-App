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
        Schema::create('taking_times', function (Blueprint $table) {
            $table->id();
            $table->string('type_document');
            $table->dateTime('initial_date');
            $table->dateTime('final_date');
            $table->integer('time_in_seconds');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('taking_times');
    }
};
