@extends('backend.layouts.app')

@section('title')
Them moi Chu de
@endsection

@section('css')
<link rel="stylesheet" href="{{ asset('theme/adminlte/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css') }}">
@endsection

@section('page-header')
Them moi Chu de<small>Cac chu de ve loai hoa</small>
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

<form name="frmChuDe" method="POST" action="{{ route('chude.store') }}">
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
          <input type="text" class="form-control" name="cd_ten" id="cd_ten" placeholder="Vui long nhap ten" required>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Ngay tao</label>
          <input type="text" class="form-control datepicker" name="cd_taoMoi" id="cd_taoMoi" placeholder="Vui long nhap ngay tao">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Ngay cap nhat</label>
          <input type="text" class="form-control datepicker" name="cd_capNhat" id="cd_capNhat" placeholder="Vui long nhap ngay cap nhat">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Trang thai</label>
          <select name="cd_trangThai" id="cd_trangThai">
            <option value="1">Khóa</option>
            <option value="2">Khả dụng</option>
          </select>
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
    $('.datepicker').datepicker({
      format: 'yyyy-mm-dd',
      autoclose: true
    });
  })
</script>
@endsection