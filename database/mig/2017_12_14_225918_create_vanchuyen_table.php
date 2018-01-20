<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVanchuyenTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vanchuyen', function (Blueprint $table) {
            $table->tinyIncrements('vc_ma');
            $table->string('vc_ten')->unique();
            $table->unsignedInteger('vc_chiPhi')->default(0);
            $table->text('vc_dienGiai');
            $table->timestamp('vc_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('vc_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->tinyInteger('vc_trangThai')->unsigned()->default(2);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vanchuyen');
    }
}
