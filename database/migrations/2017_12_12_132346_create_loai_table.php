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
            $table->engine = 'MyISAM'; // for READ
            $table->tinyIncrements('1_ma');
            $table->string('1_ten', 50);
            $table->timestamp('1_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('1_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedTinyInteger('1_trangThai')->default('2');
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
