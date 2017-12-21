<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateQuyenTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('quyen', function (Blueprint $table) {
          $table->tinyIncrements('q_ma');
          $table->string('q_ten',30)->unique();
          $table->string('q_dienGiai',250)->nullable();
          $table->timestamp('q_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
          $table->timestamp('q_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
          $table->unsignedTinyInteger('q_trangThai')->default(2);
      });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('quyen');
    }
}
