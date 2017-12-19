<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSanphamTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sanpham', function (Blueprint $table) {
          $table->bigIncrements('sp_ma');
          $table->string('sp_ten', 200);
          $table->unsignedInteger('sp_giaGoc')->default('0');
          $table->unsignedInteger('sp_giaBan')->default('0');
          $table->string('sp_hinh', 200);
          $table->timestamp('sp_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
          $table->timestamp('sp_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
          $table->unsignedTinyInteger('sp_trangThai')->default('2');
          $table->unsignedTinyInteger('1_ma');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sanpham');
    }
}
