<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHoadonleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hoadonle', function (Blueprint $table) {
           $table->engine ='InnoDB';
            $table->bigIncrements('hdl_ma');
           $table->string('hdl_nguoiMuaHang',100);
           $table->string('hdl_dienThoai',11);
           $table->string('hdl_diaChi',250);
           $table->unsignedSmallInteger('nv_lapHoaDon');
           $table->dateTime('hdl_ngayXuatHoaDon')->default(DB::raw('CURRENT_TIMESTAMP'));
           $table->unsignedBigInteger('dh_ma');
           $table->foreign('nv_lapHoaDon')->references('nv_ma')->on('nhanvien')->onD;
           $table->foreign('dh_ma')->references('dh_ma')->on('donhang')->onDelete('CASCADE')->onUpdate('CASCADE');
           
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('hoadonle');
    }
}
