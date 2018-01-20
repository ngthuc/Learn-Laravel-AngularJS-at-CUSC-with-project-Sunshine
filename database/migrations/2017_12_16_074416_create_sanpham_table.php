<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSanphamTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sanpham', function (Blueprint $table) {
            $table->engine ='InnoDB';
            $table->unsignedBigInteger('sp_ma')->autoIncrements();
            $table->string('sp_ten',190);
            $table->unsignedInteger('sp_giaGoc')->default('0');
            $table->unsignedInteger('sp_giaBan')->default('0');
            $table->string('sp_hinh',200);
            $table->text('sp_thongTin');
            $table->string('sp_danhGia',50);
            $table->timestamp('sp_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('sp_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedTinyInteger('sp_trangThai')->default('2');
            $table->unique(['sp_ten']);
            
            $table->unsignedTinyInteger('l_ma');
            $table->foreign('l_ma')->references('l_ma')->on('loai')->onDelete('CASCADE')->onUpdate('CASCADE');
             $table->primary('sp_ma');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sanpham');
    }
}
