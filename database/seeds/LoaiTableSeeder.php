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
        $list = [];
        $types = ["Hoa lẻ", "Phụ liệu", "Bó hoa", "Giỏ hoa", "Hoa hộp giấy", 
                       "Kệ hoa", "Vòng hoa", "Bình hoa", "Hoa hộp gỗ"];
        sort($types);

        $today = new DateTime('2017-12-14 20:56:00');

        for ($i=1; $i <= count($types); $i++) {
            array_push($list, 
            	[
	                'l_ma'      => $i,
	                'l_ten'     => $types[$i-1],
	                'l_taoMoi'  => $today->format('Y-m-d H:i:s'),
	                'l_capNhat' => $today->format('Y-m-d H:i:s')
            	]
            );
        }

        DB::table('cusc_loai')->insert($list);
    }
}
