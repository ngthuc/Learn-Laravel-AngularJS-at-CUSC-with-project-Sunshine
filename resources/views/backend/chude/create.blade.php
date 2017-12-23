@extends('backend.layouts.app')

@section('title')
Thêm mới Chủ đề
@endsection

@section('page-header')
<h1>
  Thêm mới Chủ đề
  <small>Các chủ đề về loại hoa</small>
</h1>
@endsection

@section('content')
<div class="box box-primary">
  <div class="box-header with-border">
      <h3 class="box-title">Quick Example</h3>
  </div>
  <!-- /.box-header -->
  <!-- form start -->
  <form name="frmChuDe" method="POST" action="{{ route('chude.store') }}">
    <div class="box-body">
      <div class="form-group">
        <label for="exampleInputEmail1">Tên chủ đề</label>
        <input type="text" class="form-control" name="cd_ten" placeholder="Vui lòng nhập tên">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Ngày tạo</label>
        <input type="date" class="form-control" name="cd_taoMoi" placeholder="Chọn ngày tạo">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Ngày cập nhật</label>
        <input type="date" class="form-control" name="cd_capNhat" placeholder="Chọn ngày cập nhật">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Trạng thái</label>
        <input type="text" class="form-control" name="cd_trangThai" placeholder="Vui lòng nhập trạng thái">
      </div>
    </div>
    <!-- /.box-body -->

    <div class="box-footer">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </form>
</div>
@endsection
