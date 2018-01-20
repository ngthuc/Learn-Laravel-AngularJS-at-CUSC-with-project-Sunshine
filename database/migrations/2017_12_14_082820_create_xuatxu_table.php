<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateXuatxuTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('xuatxu', function (Blueprint $table) {
            $table->engine ='InnoDB';
            $table->unsignedSmallInteger('xx_ma')->autoIncrements();
            $table->string('xx_ten',100);
             $table->timestamp('xx_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('xx_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedTinyInteger('xx_trangThai')->default('2');
            $table->unique(['xx_ten']);
            $table-> primary('xx_ma');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('xuatxu');
    }
}
