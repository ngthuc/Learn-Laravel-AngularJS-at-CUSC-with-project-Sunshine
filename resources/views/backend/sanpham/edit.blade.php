@extends('backend.layouts.app')

@section('title')
Hiệu chỉnh Sản phẩm
@endsection

@section('css')
<link rel="stylesheet" href="{{ asset('theme/adminlte/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')}}">
@endsection

@section('page-header')
<h1>
  Hiệu chỉnh Sản phẩm
</h1>
@endsection

@section('content')
<div class="box box-primary">
  <div class="box-header with-border">
      <h3 class="box-title">Quick Example</h3>
  </div>
  <!-- /.box-header -->
  <!-- form start -->
  <form name="frmsanpham" method="POST" action="{{ route('sanpham.update', ['sanpham' => $sanpham->sp_ma]) }}" enctype="multipart/form-data">
    {{ csrf_field() }}
    {{ method_field('PATCH') }}
    <div class="box-body">
      <div class="form-group">
        <label>Loại</label>
        <select class="form-control" name="l_ma" id="l_ma">
          @foreach($dsLoai as $loai)
          <option value="{{ $loai->l_ma }}" <?php echo ($loai->l_ma == $sanpham->l_ma) ? 'selected' : '' ?>>{{ $loai->l_ten }}</option>
          @endforeach
        </select>
      </div>
      <div class="form-group">
        <labe>Tên Sản phẩm</labe>
        <input type="text" class="form-control" name="sp_ten" value="{{ $sanpham->sp_ten }}" placeholder="Vui lòng nhập tên">
      </div>
      <div class="form-group">
        <label>Giá gốc</label>
        <input type="text" class="form-control" name="sp_giaGoc" value="{{ $sanpham->sp_giaGoc }}" placeholder="Vui lòng nhập giá gốc">
      </div>
      <div class="form-group">
        <label>Giá bán</label>
        <input type="text" class="form-control" name="sp_giaBan" value="{{ $sanpham->sp_giaBan }}" placeholder="Vui lòng nhập giá bán">
      </div>
      <div class="form-group">
        <label>Hình ảnh</label>
        <div class="row">
          <div class="col-sm-1">
            <img src="{{ asset('upload/'.$sanpham->sp_hinh) }}" id="img" alt="Hình sản phẩm" width="75px" height="75px">
          </div>
          <div class="col-sm-11">
            <br />
            <input type="file" class="form-control" id="upload" name="sp_hinh" value="{{ $sanpham->sp_hinh }}" required="true" placeholder="Vui lòng chọn hình ảnh">
          </div>
        </div>
      </div>
      <div class="form-group">
        <label>Thông tin</label>
        <input type="text" class="form-control" name="sp_thongTin" value="{{ $sanpham->sp_thongTin }}" placeholder="Vui lòng nhập thông tin">
      </div>
      <div class="form-group">
        <label>Đánh giá</label>
        <!-- <input type="text" class="form-control" name="sp_danhGia" value="{{ $sanpham->sp_danhGia }}" placeholder="Vui lòng đánh giá"> -->
        <br>
        <span class="star-rating">
          @for($i=1;$i<=5;$i++)
          <input type="radio" name="sp_danhGia" value="{{ $i }}" <?php echo ($i == $sanpham->sp_danhGia) ? 'checked' : '' ?>> {{ $i }} sao
          @endfor
        </span>
      </div>
      <div class="form-group">
        <label>Ngày tạo</label>
        <input type="text" class="form-control" name="sp_taoMoi" value="{{ $sanpham->sp_taoMoi }}" placeholder="Chọn ngày tạo">
      </div>
      <div class="form-group">
        <label>Ngày cập nhật</label>
        <input type="text" class="form-control" name="sp_capNhat" value="{{ $sanpham->sp_capNhat }}" placeholder="Chọn ngày cập nhật">
      </div>
      <div class="form-group">
        <label>Trạng thái</label>
        <input type="text" class="form-control" name="sp_trangThai" value="{{ $sanpham->sp_trangThai }}" placeholder="Vui lòng nhập trạng thái">
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
