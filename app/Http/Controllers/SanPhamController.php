<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SanPham;
use App\Loai;

class SanPhamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $dsSanPham = SanPham::all();
        return view('backend.sanpham.index')
            ->with('dsSanPham', $dsSanPham);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $dsLoai = Loai::all();
        return view('backend.sanpham.create')
            ->with('dsLoai', $dsLoai);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            $sanpham = new SanPham();
            $sanpham->sp_ten = $request->sp_ten;
            $sanpham->sp_giaGoc = $request->sp_giaGoc;
            $sanpham->sp_giaBan = $request->sp_giaBan;
            
            //Kiểm tra file
            if($request->hasFile('sp_hinh')){
              $file = $request->sp_hinh;
              //Lấy Tên files
              // echo 'Tên Files: '.$file->getClientOriginalName();

              // //Lấy Đuôi File
              // echo 'Đuôi file: '.$file->getClientOriginalExtension();
              // echo '<br/>';
       
              // //Lấy đường dẫn tạm thời của file
              // echo 'Đường dẫn tạm: '.$file->getRealPath();
              // echo '<br/>';
       
              // //Lấy kích cỡ của file đơn vị tính theo bytes
              // echo 'Kích cỡ file: '.$file->getSize();
              // echo '<br/>';
       
              // //Lấy kiểu file
              // echo 'Kiểu files: '.$file->getMimeType();   
                $sanpham->sp_hinh = $file->getClientOriginalName();
                $file->move('upload', $sanpham->sp_hinh);
            }


            $sanpham->sp_thongTin = $request->sp_thongTin;
            $sanpham->sp_danhGia = $request->sp_danhGia;
            $sanpham->sp_taoMoi = $request->sp_taoMoi;
            $sanpham->sp_capNhat = $request->sp_capNhat;
            $sanpham->sp_trangThai = $request->sp_trangThai;
            $sanpham->l_ma = $request->l_ma;
            $sanpham->save();

            return redirect(route('sanpham.index'));
        }
        catch(QueryException $ex)
        {
            return response([
                    'error' => true, 'message' => $ex->getMessage()
                ], 500);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $sanpham = Sanpham::find($id);
        $dsLoai = Loai::all();

        return view('backend.sanpham.edit')
            ->with('sanpham', $sanpham)
            ->with('dsLoai', $dsLoai);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $sanpham = SanPham::find($id);
            $sanpham->sp_ten = $request->sp_ten;
            $sanpham->sp_giaGoc = $request->sp_giaGoc;
            $sanpham->sp_giaBan = $request->sp_giaBan;
            
            //Kiểm tra file
            if($request->hasFile('sp_hinh')){
               $file = $request->sp_hinh;
               $sanpham->sp_hinh = $file->getClientOriginalName();
               $file->move('upload', $sanpham->sp_hinh);
            }

            $sanpham->sp_thongTin = $request->sp_thongTin;
            $sanpham->sp_danhGia = $request->sp_danhGia;
            $sanpham->sp_taoMoi = $request->sp_taoMoi;
            $sanpham->sp_capNhat = $request->sp_capNhat;
            $sanpham->sp_trangThai = $request->sp_trangThai;
            $sanpham->l_ma = $request->l_ma;
            $sanpham->save();

            return redirect(route('sanpham.index'));
        }
        catch(QueryException $ex)
        {
            return response([
                    'error' => true, 'message' => $ex->getMessage()
                ], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $sanpham = SanPham::find($id);
            $sanpham->delete();
            
            return redirect(route('sanpham.index'));
        }
        catch(QueryException $ex)
        {
            return response([
                    'error' => true, 'message' => $ex->getMessage()
                ], 500);
        }
    }
}
