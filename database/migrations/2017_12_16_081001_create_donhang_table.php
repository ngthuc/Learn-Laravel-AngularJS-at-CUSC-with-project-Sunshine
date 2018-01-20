<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDonhangTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('donhang', function (Blueprint $table) {
            $table->engine ='InnoDB';
            $table->bigIncrements('dh_ma');
            $table->unsignedBigInteger('kh_ma');
            $table->dateTime('dh_thoiGianDatHang')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->dateTime('dh_thoiGianNhanHang');
            $table->string('dh_nguoiNhan',100);
            $table->string('dh_diaChi',250);
            $table->string('dh_dienThoai',11);
            $table->string('dh_nguoiGui',100);
            $table->text('dh_loiChuc');
            $table->unsignedTinyInteger('dh_daThanhToan')->default('0');
            $table->unsignedSmallInteger('nv_xuLy');
            $table->dateTime('dh_ngayXuLy');
            $table->unsignedSmallInteger('nv_giaoHang');
            $table->dateTime('dh_ngayLapPhieuGiao');
            $table->dateTime('dh_ngayGiaoHang');
            $table->timestamp('dh_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('dh_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedTinyInteger('dh_trangThai')->default('1');
            $table->unsignedTinyInteger('vc_ma');
            $table->unsignedTinyInteger('tt_ma');
            $table->foreign('kh_ma')->references('kh_ma')->on('khachhang');
            $table->foreign('nv_xuLy')->references('nv_ma')->on('nhanvien');
            $table->foreign('nv_giaoHang')->references('nv_ma')->on('nhanvien');
            $table->foreign('vc_ma')->references('vc_ma')->on('vanchuyen')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('tt_ma')->references('tt_ma')->on('thanhtoan')->onDelete('CASCADE')->onUpdate('CASCADE');
              
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('donhang');
    }
}
