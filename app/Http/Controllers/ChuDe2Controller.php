<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Chude;

class ChuDe2Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $dsChude = ChuDe::all();
      // return json_encode($dsChude);
      return view('backend.chude.index')->with('dsChude',$dsChude);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.chude.create');
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
          $chude = new ChuDe();
          $chude->cd_ten = $request->cd_ten;
          $chude->cd_taoMoi = $request->cd_taoMoi;
          $chude->cd_capNhat = $request->cd_capNhat;
          $chude->cd_trangThai = $request->cd_trangThai;
          $save = $chude->save();

          return redirect(route('chude.index'));
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
        $chude = ChuDe::find($id);

        return view('backend.chude.edit')->with('chude', $chude);
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
          $chude = ChuDe::find($id);
          $chude->cd_ten = $request->cd_ten;
          $chude->cd_taoMoi = $request->cd_taoMoi;
          $chude->cd_capNhat = $request->cd_capNhat;
          $chude->cd_trangThai = $request->cd_trangThai;
          $save = $chude->save();

          return redirect(route('chude.index'));
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
        $chude = ChuDe::find($id);
        $save = $chude->delete();

        return redirect(route('chude.index'));
      }
      catch(QueryException $ex) {
        return response([
            'error' => true, 'message' => $ex->getMessage()
          ], 500);
      }
    }
}
