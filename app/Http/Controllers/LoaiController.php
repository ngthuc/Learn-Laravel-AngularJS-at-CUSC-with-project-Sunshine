<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Loai;

class LoaiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $dsLoai = Loai::all();
      return view('backend.loai.index')->with('dsLoai',$dsLoai);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.loai.create');
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
        // Lưu vào CSDL
        $loai = new Loai();
        $loai->l_ten = $request->l_ten;
        $loai->l_taoMoi = $request->l_taoMoi;
        $loai->l_capNhat = $request->l_capNhat;
        $loai->l_trangThai = $request->l_trangThai;
        $save = $loai->save();

        return redirect(route('loai.index'));
      }
      catch(QueryException $ex) {
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
      // Sửa dữ liệu
      $loai = Loai::find($id);

      return view('backend.loai.edit')->with('loai', $loai);
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
      // Cập nhật dữ liệu một dòng
      try {
        // Lưu vào CSDL
        $loai = Loai::find($id);
        $loai->l_ten = $request->l_ten;
        $loai->l_taoMoi = $request->l_taoMoi;
        $loai->l_capNhat = $request->l_capNhat;
        $loai->l_trangThai = $request->l_trangThai;
        $save = $loai->save();

        return redirect(route('loai.index'));
      }
      catch(QueryException $ex) {
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
      // Xóa dữ liệu
      try {
        // Lưu vào CSDL
        $loai = Loai::find($id);
        $save = $loai->delete();

        return redirect(route('loai.index'));
      }
      catch(QueryException $ex) {
        return response([
            'error' => true, 'message' => $ex->getMessage()
          ], 500);
      }
    }
}
