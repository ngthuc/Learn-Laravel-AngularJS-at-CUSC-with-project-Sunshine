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
            $table->bigIncrements('dh_ma');
            $table->bigInteger('kh_ma')->unsigned();
            $table->foreign('kh_ma')->references('kh_ma')->on('khachhang');
            $table->dateTime('dh_thoiGianDatHang')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->dateTime('dh_thoiGianNhanHang')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->string('dh_nguoiNhan',100);
            $table->string('dh_diaChi',250);
            $table->string('dh_dienThoai',11);
            $table->string('dh_nguoiGui',100);
            $table->text('dh_loiChuc')->nullable();
            $table->unsignedTinyInteger('dh_daThanhToan')->default(0);
            $table->unsignedSmallInteger('nv_xuLy')->default(1);
            $table->foreign('nv_xuLy')->references('nv_ma')->on('nhanvien');
            $table->dateTime('dh_ngayXuLy')->nullable()->default(NULL);
            $table->unsignedSmallInteger('nv_giaoHang')->default(1);
            $table->foreign('nv_giaoHang')->references('nv_ma')->on('nhanvien');
            $table->dateTime('dh_ngayLapPhieuGiao')->nullable()->default(NULL);
            $table->dateTime('dh_ngayGiaoHang')->nullable()->default(NULL);
            $table->timestamp('dh_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('dh_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->tinyInteger('dh_trangThai')->unsigned()->default(1);
            $table->tinyInteger('vc_ma')->unsigned();
            $table->foreign('vc_ma')->references('vc_ma')->on('vanchuyen');
            $table->tinyInteger('tt_ma')->unsigned();
            $table->foreign('tt_ma')->references('tt_ma')->on('thanhtoan');
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
