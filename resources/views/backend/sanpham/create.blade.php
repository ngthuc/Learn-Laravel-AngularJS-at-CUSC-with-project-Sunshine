@extends('backend.layouts.app')

@section('title')
Thêm mới Sản phẩm
@endsection

@section('page-header')
<h1>
  Thêm mới Sản phẩm
</h1>
@endsection

@section('content')
<div class="box box-primary">
  <div class="box-header with-border">
      <h3 class="box-title">Quick Example</h3>
  </div>
  <!-- /.box-header -->
  <!-- form start -->
  <form name="frmloai" method="POST" action="{{ route('sanpham.store') }}">
    <div class="box-body">
      {{ csrf_field() }}
      <div class="form-group">
        <label for="exampleInputPassword1">Loại</label>
        <select class="form-control" name="l_ma" id="l_ma">
          @foreach($dsLoai as $loai)
          <option value="{{ $loai->l_ma }}">{{ $loai->l_ten }}</option>
          @endforeach
        </select>
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">Tên Sản phẩm</label>
        <input type="text" class="form-control" name="sp_ten" placeholder="Vui lòng nhập tên">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">Giá gốc</label>
        <input type="text" class="form-control" name="sp_giaGoc" placeholder="Vui lòng nhập giá gốc">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">Giá bán</label>
        <input type="text" class="form-control" name="sp_giaBan" placeholder="Vui lòng nhập giá bán">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">Hình ảnh</label>
        <input type="text" class="form-control" name="sp_hinh" placeholder="Vui lòng chọn hình ảnh">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">Thông tin</label>
        <input type="text" class="form-control" name="sp_thongTin" placeholder="Vui lòng nhập thông tin">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">Đánh giá</label>
        <input type="text" class="form-control" name="sp_danhGia" placeholder="Vui lòng đánh giá">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Ngày tạo</label>
        <input type="date" class="form-control" name="sp_taoMoi" placeholder="Chọn ngày tạo">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Ngày cập nhật</label>
        <input type="date" class="form-control" name="sp_capNhat" placeholder="Chọn ngày cập nhật">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Trạng thái</label>
        <input type="text" class="form-control" name="sp_trangThai" placeholder="Vui lòng nhập trạng thái">
      </div>
    </div>
    <!-- /.box-body -->

    <div class="box-footer">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </form>
</div>
@endsection
