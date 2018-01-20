<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKhuyenmaisanphamTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('khuyenmaisanpham', function (Blueprint $table) {
            $table->engine ='InnoDB';
            $table->unsignedTinyInteger('km_ma');
            $table->unsignedBigInteger('sp_ma');
            $table->unsignedTinyInteger('m_ma');
            $table->string('kmsp_giaTri',50);
            $table->unsignedTinyInteger('kmsp_trangThai')->default('2');
            $table->foreign('km_ma')->references('km_ma')->on('khuyenmai')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('sp_ma')->references('sp_ma')->on('sanpham')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('m_ma')->references('m_ma')->on('mau')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->primary(['km_ma', 'sp_ma','m_ma']);

            
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('khuyenmaisanpham');
    }
}
