@extends('backend.layouts.app')

@section('title')
Sua Sản phẩm
@endsection

@section('page-header')
Sua Sản phẩm<small>Cac Sản phẩm</small>
@endsection

@section('content')
<form name="frmsanpham" method="POST" action="{{ route('sanpham.update', ['sanpham' => $sanpham->sp_ma]) }}" enctype="multipart/form-data">
  {{ csrf_field() }}
  {{ method_field("PATCH") }}
  <div class="box box-primary">
    <div class="box-header with-border">
      <h3 class="box-title">Sua Sản phẩm</h3>
    </div>
    <!-- /.box-header -->
    <!-- form start -->
    <form role="form">
      <div class="box-body">
        <div class="form-group">
          <label for="exampleInputEmail1">Loại Sản phẩm</label>
          <select name="l_ma" id="l_ma">
            @foreach ($dsLoai as $loai)
            <option value="{{ $loai->l_ma }}" <?php echo ($loai->l_ma == $sanpham->l_ma) ? 'selected' : '' ?>>{{ $loai->l_ten }}</option>
            @endforeach
          </select>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Ten Sản phẩm</label>
          <input type="text" class="form-control" name="sp_ten" id="sp_ten" placeholder="Vui long nhap ten" value="{{ $sanpham->sp_ten }}">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Giá bán</label>
          <input type="text" class="form-control" name="sp_giaBan" id="sp_giaBan" placeholder="Vui long nhap giá bán" value="{{ $sanpham->sp_giaBan }}">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Giá gốc</label>
          <input type="text" class="form-control" name="sp_giaGoc" id="sp_giaGoc" placeholder="Vui long nhap giá gốc" value="{{ $sanpham->sp_giaGoc }}">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Hình <img id="image" src="{{ asset('upload/' . $sanpham->sp_hinh) }}" width="50px" height="50px" onchange="readURL(this);"/></label>
          <input type="file" name="sp_hinh" id="sp_hinh" class="filestyle" required="true" />
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Thông tin</label>
          <input type="text" class="form-control" name="sp_thongTin" id="sp_thongTin" placeholder="Vui long nhập thông tin" value="{{ $sanpham->sp_thongTin }}">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Đánh giá</label>
          <input type="text" class="form-control" name="sp_danhGia" id="sp_danhGia" placeholder="Vui long nhập đánh giá" value="{{ $sanpham->sp_danhGia }}">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Ngay tao</label>
          <input type="text" class="form-control" name="sp_taoMoi" id="sp_taoMoi" placeholder="Vui long nhap ngay tao" value="{{ $sanpham->sp_taoMoi }}">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Ngay cap nhat</label>
          <input type="text" class="form-control" name="sp_capNhat" id="sp_capNhat" placeholder="Vui long nhap ngay cap nhat" value="{{ $sanpham->sp_capNhat }}">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Trang thai</label>
          <input type="text" class="form-control" name="sp_trangThai" id="sp_trangThai" placeholder="Vui long nhap trang thai" value="{{ $sanpham->sp_trangThai }}">
        </div>
      </div>
      <!-- /.box-body -->

      <div class="box-footer">
        <button type="submit" class="btn btn-primary">Luu du lieu</button>
      </div>
    </form>
  </div>
</form>

<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->

     <script>
     function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#image')
                    .attr('src', e.target.result)
                    .width(150)
                    .height(200);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
@endsection