<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePhieunhapTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('phieunhap', function (Blueprint $table) {
            $table->engine ='InnoDB';
            $table->bigIncrements('pn_ma');
            $table->string('pn_nguoiGiao',190);
            $table->string('pn_soHoaDon',15);
            $table->dateTime('pn_ngayXuatHoaDon')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->text('pn_giChu');
            $table->unsignedSmallInteger('nv_nguoiLapPhieu');
            $table->dateTime('pn_ngayLapPhieu')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedSmallInteger('nv_keToan');
            $table->dateTime('pn_ngayXacNhan');
            $table->unsignedSmallInteger('nv_thuKho');
            $table->dateTime('pn_ngayNhapKho');
            $table->timestamp('pn_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('pn_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedTinyInteger('pn_trangThai')->default('2');
            $table->unique(['pn_soHoaDon']);
            $table->unsignedTinyInteger('ncc_ma');
            $table->foreign('nv_nguoiLapPhieu')->references('nv_ma')->on('nhanvien');
            $table->foreign('nv_keToan')->references('nv_ma')->on('nhanvien');
            $table->foreign('nv_thuKho')->references('nv_ma')->on('nhanvien');
            $table->foreign('ncc_ma')->references('ncc_ma')->on('nhacungcap')->onDelete('CASCADE')->onUpdate('CASCADE');
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('phieunhap');
    }
}
