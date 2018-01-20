<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Chude;
use App\Http\Requests\ChuDeRequest;

class ChuDeController extends Controller
{
    public function LayHetDanhSach()
    {
    	//$dsChuDe = Chude::all();
		$dsChuDe = DB::table('cusc_chude')->get();
		return json_encode($dsChuDe);
    }

    public function LayDongDauTien()
    {
    	return 'Lay dong dau tien cua chu de';
    }

    public function index()
    {
        $dsChuDe = DB::table('cusc_chude')->get();
        
        return view('backend.chude.index')
            ->with('dsChuDe', $dsChuDe);
    }

    public function create()
    {
        return view('backend.chude.create');
    }

    public function store(ChuDeRequest $request)
    {
        /*
        $this->validate($request, [
            'cd_ten' => 'required|max:20',
            'cd_taoMoi' => 'required',
            'cd_capNhat' => 'required',
            'cd_trangThai' => 'required',
        ]);
        */
        try {
            $chude = new Chude();
            $chude->cd_ten = $request->cd_ten;
            $chude->cd_taoMoi = $request->cd_taoMoi;
            $chude->cd_capNhat = $request->cd_capNhat;
            $chude->cd_trangThai = $request->cd_trangThai;
            $chude->save();

            return redirect(route('chude.index'));
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
        $chude = Chude::find($id);

        return view('backend.chude.edit')
            ->with('chude', $chude);
    }

    public function update(Request $request, $id)
    {
        try {
            $chude = Chude::find($id);
            $chude->cd_ten = $request->cd_ten;
            $chude->cd_taoMoi = $request->cd_taoMoi;
            $chude->cd_capNhat = $request->cd_capNhat;
            $chude->cd_trangThai = $request->cd_trangThai;
            $chude->save();

            return redirect(route('chude.index'));
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
            $chude = Chude::find($id);
            $chude->delete();
            
            return redirect(route('chude.index'));
        }
        catch(QueryException $ex)
        {
            return response([
                    'error' => true, 'message' => $ex->getMessage()
                ], 500);
        }

    }
}
