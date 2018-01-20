<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateThanhtoanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('thanhtoan', function (Blueprint $table) {
            $table->tinyIncrements('tt_ma');
            $table->string('tt_ten')->unique();
            $table->text('tt_dienGiai');
            $table->timestamp('tt_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('tt_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->tinyInteger('tt_trangThai')->unsigned()->default(2);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('thanhtoan');
    }
}
