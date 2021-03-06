<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMauTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mau', function (Blueprint $table) {
            $table->engine ='InnoDB';
            $table->unsignedTinyInteger('m_ma')->autoIncrements();
            $table->string('m_ten',50);
             $table->timestamp('m_taoMoi')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('m_capNhat')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedTinyInteger('m_trangThai')->default('2');
            $table->unique(['m_ten']);
             $table->primary('m_ma');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mau');
    }
}
