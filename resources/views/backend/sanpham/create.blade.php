@extends('backend.layouts.app')

@section('title')
Them moi Sản phẩm
@endsection

@section('page-header')
Them moi Sản phẩm<small>Cac Sản phẩm</small>
@endsection

@section('content')
<form name="frmsanpham" method="POST" action="{{ route('sanpham.store') }}" enctype="multipart/form-data">
  {{ csrf_field() }}
  <div class="box box-primary">
    <div class="box-header with-border">
      <h3 class="box-title">Them moi Sản phẩm</h3>
    </div>
    <!-- /.box-header -->
    <!-- form start -->
    <form role="form">
      <div class="box-body">
        <div class="form-group">
          <label for="exampleInputEmail1">Loại Sản phẩm</label>
          <select name="l_ma" id="l_ma">
            @foreach ($dsLoai as $loai)
            <option value="{{ $loai->l_ma }}">{{ $loai->l_ten }}</option>
            @endforeach
          </select>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Ten Sản phẩm</label>
          <input type="text" class="form-control" name="sp_ten" id="sp_ten" placeholder="Vui long nhap ten">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Giá bán</label>
          <input type="text" class="form-control" name="sp_giaBan" id="sp_giaBan" placeholder="Vui long nhap giá bán">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Giá gốc</label>
          <input type="text" class="form-control" name="sp_giaGoc" id="sp_giaGoc" placeholder="Vui long nhap giá gốc">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Hình</label>
          <input type="file" name="sp_hinh" id="sp_hinh" required="true">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Thông tin</label>
          <input type="text" class="form-control" name="sp_thongTin" id="sp_thongTin" placeholder="Vui long nhập thông tin">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Đánh giá</label>
          <input type="text" class="form-control" name="sp_danhGia" id="sp_danhGia" placeholder="Vui long nhập đánh giá">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Ngay tao</label>
          <input type="text" class="form-control" name="sp_taoMoi" id="sp_taoMoi" placeholder="Vui long nhap ngay tao">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Ngay cap nhat</label>
          <input type="text" class="form-control" name="sp_capNhat" id="sp_capNhat" placeholder="Vui long nhap ngay cap nhat">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Trang thai</label>
          <input type="text" class="form-control" name="sp_trangThai" id="sp_trangThai" placeholder="Vui long nhap trang thai">
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