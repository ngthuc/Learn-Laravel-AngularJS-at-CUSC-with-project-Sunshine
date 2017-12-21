<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHoadonsiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hoadonsi', function (Blueprint $table) {
            $table->bigIncrements('hds_ma');
            $table->string('hds_nguoiMuaHang',100);
            $table->string('hds_tenDonVi',200);
            $table->string('hds_diaChi',250);
            $table->string('hds_maSoThe',14);
            $table->string('hds_soTaiKhoan',20)->nullable()->default(NULL);
            $table->unsignedTinyInteger('nv_lapHoaDon');
            $table->foreign('nv_lapHoaDon')->references('nv_ma')->on('nhanvien');
            $table->dateTime('hds_ngayXuatHoaDon')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedTinyInteger('nv_thuTruong')->default(1);
            $table->foreign('nv_thuTruong')->references('nv_ma')->on('nhanvien');
            $table->timestamp('hds_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('hds_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->tinyInteger('hds_trangThai')->unsigned()->default(1);
            $table->unsignedBigInteger('dh_ma')->default(1);
            $table->foreign('dh_ma')->references('dh_ma')->on('donhang');
            $table->unsignedTinyInteger('tt_ma')->default(1);
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
        Schema::dropIfExists('hoadonsi');
    }
}
