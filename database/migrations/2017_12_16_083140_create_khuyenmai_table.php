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
            $table->engine ='InnoDB';
            $table->unsignedTinyInteger('km_ma')->autoIncrements();
            $table->string('km_ten',191);
            $table->text('km_noiDung');
            $table->dateTime('km_batDau');
            $table->dateTime('km_ketThuc');
            $table->unsignedSmallInteger('nv_nguoiLap');
            $table->dateTime('km_ngayLap')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedSmallInteger('nv_kyNhay')->default('1');
            $table->dateTime('km_ngayKyNhay');
            $table->unsignedSmallInteger('nv_kyDuyet')->default('1');
            $table->dateTime('km_ngayDuyet');           
            $table->timestamp('km_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('km_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedTinyInteger('km_trangThai')->default('3');
            $table->primary('km_ma');
            $table->foreign('nv_nguoiLap')->references('nv_ma')->on('nhanvien');
            $table->foreign('nv_kyNhay')->references('nv_ma')->on('nhanvien');
            $table->foreign('nv_kyDuyet')->references('nv_ma')->on('nhanvien');
            

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
