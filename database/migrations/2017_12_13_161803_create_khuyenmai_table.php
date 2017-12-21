<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKhuyenmaiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('khuyenmai', function (Blueprint $table) {
            $table->tinyIncrements('km_ma');
            $table->string('km_ten',200);
            $table->text('km_noiDung');
            $table->dateTime('km_batDau');
            $table->dateTime('km_ketThuc')->nullable()->default(NULL);
            $table->string('km_giaTri',50)->default('100;100');
            $table->unsignedTinyInteger('nv_nguoiLap');
            $table->dateTime('km_ngayLap')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedTinyInteger('nv_kyNhay')->default(1);
            $table->unsignedTinyInteger('nv_kyDuyet')->default(1);
            $table->dateTime('km_ngayKyNhay')->nullable()->default(NULL);
            $table->timestamp('km_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('km_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedTinyInteger('km_trangThai')->default(2);
            $table->foreign('nv_nguoiLap')->references('nv_ma')->on('nhanvien')->onDelete('cascade');
            $table->foreign('nv_kyNhay')->references('nv_ma')->on('nhanvien')->onDelete('cascade');
            $table->foreign('nv_kyDuyet')->references('nv_ma')->on('nhanvien')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('khuyenmai');
    }
}
