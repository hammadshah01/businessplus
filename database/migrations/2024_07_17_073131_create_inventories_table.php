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
        Schema::create('inventories', function (Blueprint $table) {
            $table->id();
            $table->String('prodtype')->nullable();
            $table->String('brandname')->nullable();
            $table->String('prodname')->nullable();
            $table->String('model')->nullable();
            $table->String('carrier')->nullable();
            $table->String('category')->nullable();
            $table->String('supplier')->nullable();
            $table->String('color')->nullable();
            $table->String('storage')->nullable();
            $table->String('phycond')->nullable();
            $table->String('sku')->nullable();
            $table->bigInteger('rprice')->nullable();
            $table->bigInteger('mrprice')->nullable();
            $table->bigInteger('wprice')->nullable();
            $table->bigInteger('mwprice')->nullable();
            $table->String('imei')->nullable();
            $table->String('prodesc')->nullable();
            $table->String('aiproddesc')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('inventories');
    }
};
