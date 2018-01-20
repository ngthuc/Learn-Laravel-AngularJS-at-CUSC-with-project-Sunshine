@extends('backend.layouts.app')

@section('title')
Them moi Loai
@endsection

@section('css')
<link rel="stylesheet" href="{{ asset('theme/adminlte/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css') }}">
@endsection

@section('page-header')
Them moi Loai<small>Cac Loại sản phẩm</small>
@endsection

@section('content')
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<form name="frmloai" method="POST" action="{{ route('loai.store') }}">
  {{ csrf_field() }}
  <div class="box box-primary">
    <div class="box-header with-border">
      <h3 class="box-title">Them moi Chu de</h3>
    </div>
    <!-- /.box-header -->
    <!-- form start -->
    <form role="form">
      <div class="box-body">
        <div class="form-group">
          <label for="exampleInputEmail1">Ten chu de</label>
          <input type="text" class="form-control" name="l_ten" id="l_ten" placeholder="Vui long nhap ten">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Ngay tao</label>
          <input type="text" class="form-control" name="l_taoMoi" id="l_taoMoi" placeholder="Vui long nhap ngay tao">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Ngay cap nhat</label>
          <input type="text" class="form-control" name="l_capNhat" id="l_capNhat" placeholder="Vui long nhap ngay cap nhat">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Trang thai</label>
          <input type="text" class="form-control" name="l_trangThai" id="l_trangThai" placeholder="Vui long nhap trang thai">
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

@section('scripts')
<script src="{{ asset('theme/adminlte/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js') }}"></script>
<script>
  $(function () {
    
    //Date picker
    $('#l_taoMoi1').datepicker({
      
      dateFormat: 'yyyy-mm-dd',
      altFormat: "yyyy-mm-dd"
    })

    $('#l_taoMoi').datepicker({
      format: 'yyyy-mm-dd'
    });
  })
</script>
@endsection