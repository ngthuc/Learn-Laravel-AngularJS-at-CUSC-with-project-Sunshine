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
            $table->engine ='InnoDB';
             $table->unsignedTinyInteger('tt_ma')->autoIncrements();
            $table->string('tt_ten',30);
            $table->string('tt_dienGiai',250);
             $table->timestamp('tt_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('tt_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedTinyInteger('tt_trangThai')->default('2');
            $table->unique(['tt_ten']);
             $table->primary('tt_ma');
          
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
