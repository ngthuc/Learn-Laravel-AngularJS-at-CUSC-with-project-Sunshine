@extends('backend.layouts.app')

@section('title')
Hieu chinh Chu de
@endsection

@section('page-header')
Hieu chinh Chu de<small>Cac chu de ve loai hoa</small>
@endsection

@section('content')
<form name="frmChuDe" method="POST" action="{{ route('chude.update', ['chude' => $chude->cd_ma]) }}">
  {{ csrf_field() }}
  {{ method_field("PATCH") }}
  <div class="box box-primary">
    <div class="box-header with-border">
      <h3 class="box-title">Hieu chinh Chu de</h3>
    </div>
    <!-- /.box-header -->
    <!-- form start -->
    <form role="form">
      <div class="box-body">
        <div class="form-group">
          <label for="exampleInputEmail1">Ten chu de</label>
          <input type="text" class="form-control" name="cd_ten" id="cd_ten" placeholder="Vui long nhap ten" value="{{ $chude->cd_ten }}">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Ngay tao</label>
          <input type="text" class="form-control" name="cd_taoMoi" id="cd_taoMoi" placeholder="Vui long nhap ngay tao" value="{{ $chude->cd_taoMoi }}">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Ngay cap nhat</label>
          <input type="text" class="form-control" name="cd_capNhat" id="cd_capNhat" placeholder="Vui long nhap ngay cap nhat" value="{{ $chude->cd_capNhat }}">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Trang thai</label>
          <input type="text" class="form-control" name="cd_trangThai" id="cd_trangThai" placeholder="Vui long nhap trang thai" value="{{ $chude->cd_trangThai }}">
        </div>
      </div>
      <!-- /.box-body -->

      <div class="box-footer">
        <button type="submit" class="btn btn-primary">Luu du lieu</button>
      </div>
    </form>
  </div>
</form>
@endsection