<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMauChudeSanphamTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chude_sanpham', function (Blueprint $table) {
            $table->unsignedBigInteger('sp_ma');
            $table->unsignedTinyInteger('cd_ma');
            $table->primary(array('sp_ma','cd_ma'));
            $table->foreign('sp_ma')->references('sp_ma')->on('sanpham');
            $table->foreign('cd_ma')->references('cd_ma')->on('chude');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('chude_sanpham');
    }
}
