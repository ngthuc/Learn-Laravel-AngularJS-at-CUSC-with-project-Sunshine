<?php

use Illuminate\Database\Seeder;

class LoaiTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $list = [];
        $types = ['Hoa lẻ','Phụ liệu', 'Bó hoa', 'Giỏ hoa', 'Hoa giấy'];
        sort($types);
        $today = new DateTime();
        for( $i = 1; $i <= count($types); $i++){
          array_push($list,[
            'l_ma'      => $i,
            'l_ten'     =>  $types[$i-1],
            'l_taoMoi'  =>  $today->format('Y-m-d H:i:s'),
            'l_capNhat' =>  $today->format('Y-m-d H:i:s')
          ]);
        }


        DB::table('loai')->insert($list);
    }
}
