<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLoaiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('loai', function (Blueprint $table) {
            $table->engine ='InnoDB';
            $table->unsignedTinyInteger('l_ma')->autoIncrements();
            $table->string('l_ten',50);
            $table->timestamp('l_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('l_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedTinyInteger('l_trangThai')->default('2');
            $table->unique(['l_ten']);
             $table->primary('l_ma');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('loai');
    }
}
