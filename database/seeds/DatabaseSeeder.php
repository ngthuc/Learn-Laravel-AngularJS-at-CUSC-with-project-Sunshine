<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class); Gọi tên seeder cần gọi
        $this->call(LoaiTableSeeder::class);
        $this->call(ChuDeTableSeeder::class);
        $this->call(KhachHangTableSeeder::class);
    }
}
