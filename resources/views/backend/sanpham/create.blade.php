@extends('backend.layouts.app')

@section('title')
Thêm mới Sản phẩm
@endsection

@section('css')
<link rel="stylesheet" href="{{ asset('theme/adminlte/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')}}">
@endsection

@section('content')
<div class="box box-primary">
  <div class="box-header with-border">
      <h3 class="box-title">Quick Example</h3>
  </div>
  <!-- /.box-header -->
  <!-- form start -->
  <form name="frmloai" method="POST" action="{{ route('sanpham.store') }}" enctype="multipart/form-data">
    <div class="box-body">
      {{ csrf_field() }}
      <div class="form-group">
        <label>Loại</label>
        <select class="form-control" name="l_ma" id="l_ma">
          @foreach($dsLoai as $loai)
          <option value="{{ $loai->l_ma }}">{{ $loai->l_ten }}</option>
          @endforeach
        </select>
      </div>
      <div class="form-group">
        <label>Tên Sản phẩm</label>
        <input type="text" class="form-control" name="sp_ten" placeholder="Vui lòng nhập tên">
      </div>
      <div class="form-group">
        <label>Giá gốc</label>
        <input type="text" class="form-control" name="sp_giaGoc" placeholder="Vui lòng nhập giá gốc">
      </div>
      <div class="form-group">
        <label>Giá bán</label>
        <input type="text" class="form-control" name="sp_giaBan" placeholder="Vui lòng nhập giá bán">
      </div>
      <div class="form-group">
        <label>Hình ảnh</label>
        <input type="file" class="form-control" name="sp_hinh" required="true" placeholder="Vui lòng chọn hình ảnh">
      </div>
      <div class="form-group">
        <label>Thông tin</label>
        <input type="text" class="form-control" name="sp_thongTin" placeholder="Vui lòng nhập thông tin">
      </div>
      <div class="form-group">
        <label>Đánh giá</label>
        <br />
        <!-- <input type="text" class="form-control" name="sp_danhGia" placeholder="Vui lòng đánh giá"> -->
        <span class="star-rating">
          <input type="radio" name="sp_danhGia" value="1"> 1 sao
          <input type="radio" name="sp_danhGia" value="2"> 2 sao
          <input type="radio" name="sp_danhGia" value="3"> 3 sao
          <input type="radio" name="sp_danhGia" value="4"> 4 sao
          <input type="radio" name="sp_danhGia" value="5"> 5 sao
        </span>
      </div>
      <div class="form-group">
        <label>Ngày tạo</label>
        <input type="text" class="form-control datepicker" name="sp_taoMoi" placeholder="Chọn ngày tạo">
      </div>
      <div class="form-group">
        <label>Ngày cập nhật</label>
        <input type="text" class="form-control datepicker" name="sp_capNhat" placeholder="Chọn ngày cập nhật">
      </div>
      <div class="form-group">
        <label>Trạng thái</label>
        <select class="form-control" name="sp_trangThai" id="sp_trangThai">
          <option value="1">Khóa</option>
          <option value="2">Khả dụng</option>
        </select>
      </div>
    </div>
    <!-- /.box-body -->

    <div class="box-footer">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </form>
</div>
@endsection

@section('script')
<script src="{{ asset('theme/adminlte/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')}}"></script>
<script type="text/javascript">
  $(function(){
    // Datepicker
    $('.datepicker').datepicker({
      format: 'yyyy-mm-dd',
      autoclose: true,
    })
  })
</script>
@endsection
