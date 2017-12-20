<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePhieunhapSanphamTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('phieunhap', function (Blueprint $table) {
            $table->bigIncrements('pn_ma');
            $table->string('pn_nguoiGiao',100);
            $table->string('pn_soHoaDon',10)->unique();
            $table->dateTime('pn_ngayXuatHoaDon')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->text('pn_ghiChu')->nullable()->default(NULL);
            $table->unsignedSmallInteger('nv_nguoiLapPhieu');
            $table->foreign('nv_nguoiLapPhieu')->references('nv_ma')->on('nhanvien')->onDelete('cascade');
            $table->dateTime('pn_ngayLapPhieu')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedSmallInteger('nv_keToan')->default(1);;
            $table->foreign('nv_keToan')->references('nv_ma')->on('nhanvien')->onDelete('cascade');
            $table->dateTime('pn_ngayXacNhan')->nullable()->default(NULL);
            $table->unsignedSmallInteger('nv_thuKho')->default(1);
            $table->foreign('nv_thuKho')->references('nv_ma')->on('nhanvien')->onDelete('cascade');
            $table->dateTime('pn_ngayNhapKho')->nullable()->default(NULL);
            $table->timestamp('pn_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('pn_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->tinyInteger('pn_trangThai');
            $table->unsignedSmallInteger('ncc_ma');
            $table->foreign('ncc_ma')->references('ncc_ma')->on('nhacungcap')->onDelete('cascade');
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
