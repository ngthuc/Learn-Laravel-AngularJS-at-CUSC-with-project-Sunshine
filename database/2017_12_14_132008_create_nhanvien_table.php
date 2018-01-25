<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNhanvienTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nhanvien', function (Blueprint $table) {
            $table->engine ='InnoDB';
            $table->unsignedSmallInteger('nv_ma')->autoIncrements();
            $table->string('nv_taiKhoan',50);
            $table->string('nv_matKhau',32);
            $table->string('nv_hoTen',100);
            $table->unsignedTinyInteger('nv_gioiTinh')->default('1');
            $table->string('nv_email',100);
            $table->datetime('nv_ngaySinh')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->string('nv_diaChi',250)->default('NULL');
            $table->string('nv_dienThoai',11)->default('NULL');
            $table->timestamp('nv_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('nv_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedTinyInteger('nv_trangThai')->default('2');
            $table->unique(['nv_taiKhoan','nv_email','nv_dienThoai']);
            
            $table->unsignedTinyInteger('q_ma');
            $table->foreign('q_ma')->references('q_ma')->on('quyen')->onDelete('CASCADE')->onUpdate('CASCADE');
             $table->primary('nv_ma');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('nhanvien');
    }
}
