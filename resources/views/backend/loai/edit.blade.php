@extends('backend.layouts.app')

@section('title')
Hiệu chỉnh Loại
@endsection

@section('page-header')
<h1>
  Hiệu chỉnh Loại
</h1>
@endsection

@section('content')
<div class="box box-primary">
  <div class="box-header with-border">
      <h3 class="box-title">Quick Example</h3>
  </div>
  <!-- /.box-header -->
  <!-- form start -->
  <form name="frmloai" method="POST" action="{{ route('loai.update', ['loai' => $loai->l_ma]) }}">
    {{ csrf_field() }}
    {{ method_field('PATCH') }}
    <div class="box-body">
      <div class="form-group">
        <label for="exampleInputEmail1">Tên Loại</label>
        <input type="text" class="form-control" name="l_ten" value="{{ $loai->l_ten }}" placeholder="Vui lòng nhập tên">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Ngày tạo</label>
        <input type="text" class="form-control" name="l_taoMoi" value="{{ $loai->l_taoMoi }}" placeholder="Chọn ngày tạo">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Ngày cập nhật</label>
        <input type="text" class="form-control" name="l_capNhat" value="{{ $loai->l_capNhat }}" placeholder="Chọn ngày cập nhật">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Trạng thái</label>
        <input type="text" class="form-control" name="l_trangThai" value="{{ $loai->l_trangThai }}" placeholder="Vui lòng nhập trạng thái">
      </div>
    </div>
    <!-- /.box-body -->

    <div class="box-footer">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </form>
</div>
@endsection
