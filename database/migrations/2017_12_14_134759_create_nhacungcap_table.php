<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNhacungcapTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nhacungcap', function (Blueprint $table) {
           $table->engine ='InnoDB';
            $table->unsignedTinyInteger('ncc_ma')->autoIncrements();
            $table->string('ncc_ten',191);
            $table->string('ncc_daiDien',100);
            $table->string('ncc_diaChi',250);
            $table->string('ncc_dienThoai',11);
            $table->string('ncc_email',100);            
            $table->timestamp('ncc_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('ncc_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedTinyInteger('ncc_trangThai')->default('2');
            $table->unique(['ncc_ten']);
            $table->unsignedSmallInteger('xx_ma');
            $table->foreign('xx_ma')->references('xx_ma')->on('xuatxu')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->primary('ncc_ma');
             
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('nhacungcap');
    }
}
