<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHinhanhTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hinhanh', function (Blueprint $table) {
            $table->bigIncrements('sp_ma')->comment('Vừa là khóa ngoại và khóa chính');
            $table->tinyInteger('ha_stt')->defaut(1);
            $table->string('ha_ten',150);
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
        Schema::dropIfExists('hinhanh');
    }
}
