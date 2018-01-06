@extends('backend.layouts.app')

@section('title')
Thêm mới Chủ đề
@endsection

@section('css')
<link rel="stylesheet" href="{{ asset('theme/adminlte/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')}}">
@endsection

@section('page-header')
<h1>
  Thêm mới Chủ đề
  <small>Các chủ đề về loại hoa</small>
</h1>
@endsection

@section('content')
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $errors)
                <li>{{ $errors }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="box box-primary">
  <div class="box-header with-border">
      <h3 class="box-title">Quick Example</h3>
  </div>
  <!-- /.box-header -->
  <!-- form start -->
  <form name="frmChuDe" method="POST" action="{{ route('chude.store') }}">
    <div class="box-body">
      {{ csrf_field() }}
      <div class="form-group">
        <label>Tên chủ đề</label>
        <input type="text" class="form-control" name="cd_ten" placeholder="Vui lòng nhập tên" required>
      </div>
      <div class="form-group">
        <label>Ngày tạo</label>
        <input type="text" class="form-control datepicker" name="cd_taoMoi" placeholder="Chọn ngày tạo" required>
      </div>
      <div class="form-group">
        <label>Ngày cập nhật</label>
        <input type="text" class="form-control datepicker" name="cd_capNhat" placeholder="Chọn ngày cập nhật" required>
      </div>
      <div class="form-group">
        <label>Trạng thái</label>
        <select class="form-control" name="cd_trangThai" id="cd_trangThai" required>
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
      dateFormat: 'yyyy-mm-dd',
      altFormat: 'yyyy-mm-dd',
      autoclose: true,
    })
  })
</script>
@endsection
