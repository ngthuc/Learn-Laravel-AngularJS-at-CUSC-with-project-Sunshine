<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;

class ChuDeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      // $list = [];
      // $types = ['Hoa cưới','Phụ kiện hoa', 'Giỏ hàng hoa', 'Túi xách', 'Tin tức hoa',
      // 'Sự kiện mừng xuân','Hoa mùa giáng sinh'];
      // sort($types);
      // $today = new DateTime();
      // for( $i = 1; $i <= count($types); $i++){
      //   array_push($list,[
      //     'cd_ma'      => $i,
      //     'cd_ten'     =>  $types[$i-1],
      //     'cd_taoMoi'  =>  $today->format('Y-m-d H:i:s'),
      //     'cd_capNhat' =>  $today->format('Y-m-d H:i:s')
      //   ]);
      // }
      //
      //
      // DB::table('chude')->insert($list);
      //
      $faker = Faker\Factory::create('vi-VN');
      $now = new Carbon('2017-12-16','Asia/Ho_Chi_Minh');
      $list = [];
      for( $i = 1; $i <= 10; $i++){
        $created = $now->copy()->addSeconds(
          $faker->numberBetween(1,259200)
        );
        $updated = $now->copy()->addSeconds(
          $faker->numberBetween(300,259200)
        );
        array_push($list,[

          'cd_ten'     =>  $faker->text(50),
          'cd_taoMoi'  =>  $created,
          'cd_capNhat' =>  $updated
        ]);
      }
      DB::table('chude')->insert($list);
    }
}
