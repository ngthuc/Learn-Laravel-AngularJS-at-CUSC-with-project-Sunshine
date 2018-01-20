@extends('backend.layouts.app')

@section('title')
Hieu chinh Chu de
@endsection

@section('page-header')
Hieu chinh Chu de<small>Cac chu de ve loai hoa</small>
@endsection

@section('content')
<form name="frmloai" method="POST" action="{{ route('loai.update', ['loai' => $loai->l_ma]) }}">
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
          <input type="text" class="form-control" name="l_ten" id="l_ten" placeholder="Vui long nhap ten" value="{{ $loai->l_ten }}">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Ngay tao</label>
          <input type="text" class="form-control" name="l_taoMoi" id="l_taoMoi" placeholder="Vui long nhap ngay tao" value="{{ $loai->l_taoMoi }}">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Ngay cap nhat</label>
          <input type="text" class="form-control" name="l_capNhat" id="l_capNhat" placeholder="Vui long nhap ngay cap nhat" value="{{ $loai->l_capNhat }}">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Trang thai</label>
          <input type="text" class="form-control" name="l_trangThai" id="l_trangThai" placeholder="Vui long nhap trang thai" value="{{ $loai->l_trangThai }}">
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