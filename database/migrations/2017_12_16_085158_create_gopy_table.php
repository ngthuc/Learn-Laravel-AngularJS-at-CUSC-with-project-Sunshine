<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGopyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gopy', function (Blueprint $table) {
           $table->engine ='InnoDB';
             $table->bigIncrements('gy_ma');
            $table->dateTime('gy_thoiGian')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->text('gy_noiDung');
            $table->unsignedTinyInteger('km_ma');
            $table->unsignedBigInteger('sp_ma');
            $table->unsignedTinyInteger('km_trangThai')->default('3');
            $table->foreign('km_ma')->references('km_ma')->on('khuyenmai')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('sp_ma')->references('sp_ma')->on('sanpham')->onDelete('CASCADE')->onUpdate('CASCADE');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('gopy');
    }
}
