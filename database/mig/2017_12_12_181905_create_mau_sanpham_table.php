<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMauSanphamTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('mau_sanpham', function (Blueprint $table) {
          $table->bigInteger('sp_ma')->unsigned();
          $table->tinyInteger('m_ma')->unsigned();
          $table->primary(array('sp_ma', 'm_ma'));
          $table->unsignedSmallInteger('msp_soLuong')->default(0);
          $table->foreign('sp_ma')->references('sp_ma')->on('sanpham');

      });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mau_sanpham');
    }
}
