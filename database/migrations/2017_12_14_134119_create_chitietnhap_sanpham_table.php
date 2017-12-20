<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChitietnhapSanphamTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chitietnhap', function (Blueprint $table) {
            $table->unsignedBigInteger('pn_ma');
            $table->unsignedBigInteger('sp_ma');
            $table->unsignedtinyInteger('m_ma');
            $table->unsignedSmallInteger('ctn_soLuong')->default(1);
            $table->unsignedInteger('ctn_donGia')->default(1);
            $table->foreign('pn_ma')->references('pn_ma')->on('phieunhap');
            $table->foreign('sp_ma')->references('sp_ma')->on('sanpham');
            $table->foreign('m_ma')->references('m_ma')->on('mau');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('chitietnhap');
    }
}
