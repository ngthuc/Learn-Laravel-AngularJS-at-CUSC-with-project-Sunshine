<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\LoaiRequest;
use App\Loai;
use Carbon\Carbon;

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
        return view('backend.loai.index')
            ->with('dsLoai', $dsLoai);
    }

     public function create()
    {
        return view('backend.loai.create');
    }

    public function store(LoaiRequest $request)
    {
        try {
            $loai = new loai();
            $loai->l_ten = $request->l_ten;
            $loai->l_taoMoi = Carbon::createFromFormat('d/m/y H:i:s', $request->l_taoMoi);
            $loai->l_capNhat = $request->l_capNhat;
            $loai->l_trangThai = $request->l_trangThai;
            $loai->save();

            return redirect(route('loai.index'));
        }
        catch(QueryException $ex)
        {
            return response([
                    'error' => true, 'message' => $ex->getMessage()
                ], 500);
        }
    }

    public function edit($id)
    {
        $loai = loai::find($id);

        return view('backend.loai.edit')
            ->with('loai', $loai);
    }

    public function update(Request $request, $id)
    {
        try {
            $loai = loai::find($id);
            $loai->l_ten = $request->l_ten;
            $loai->l_taoMoi = $request->l_taoMoi;
            $loai->l_capNhat = $request->l_capNhat;
            $loai->l_trangThai = $request->l_trangThai;
            $loai->save();

            return redirect(route('loai.index'));
        }
        catch(QueryException $ex)
        {
            return response([
                    'error' => true, 'message' => $ex->getMessage()
                ], 500);
        }

    }

    public function destroy($id)
    {
        try {
            $loai = loai::find($id);
            $loai->delete();
            
            return redirect(route('loai.index'));
        }
        catch(QueryException $ex)
        {
            return response([
                    'error' => true, 'message' => $ex->getMessage()
                ], 500);
        }

    }
}
