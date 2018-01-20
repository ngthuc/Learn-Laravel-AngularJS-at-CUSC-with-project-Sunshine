@extends('backend.layouts.app')

@section('title')
Danh sach Loại
@endsection

@section('page-header')
Loại<small>Cac Loại sản phẩm</small>
@endsection

@section('content')
<a href="{{ route('loai.create') }}">Bam vao day de them moi du lieu</a>
<div class="box">
    <div class="box-header">
      <h3 class="box-title">Responsive Hover Table</h3>

      <div class="box-tools">
        <div class="input-group input-group-sm" style="width: 150px;">
          <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

          <div class="input-group-btn">
            <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
          </div>
        </div>
      </div>
    </div>
    <!-- /.box-header -->
    <div class="box-body table-responsive no-padding">
      <table class="table table-hover">
        <tbody><tr>
          <th>Ma</th>
          <th>Ten</th>
          <th>Ngay cap nhat</th>
          <th>Ngay tao moi</th>
          <th>Trang thai</th>
          <th>Action</th>
        </tr>
        @foreach($dsLoai as $loai)
        <tr>
          <td>{{ $loai->l_ma }}</td>
          <td>{{ $loai->l_ten }}</td>
          <td>{{ $loai->l_taoMoi }}</td>
          <td>{{ $loai->l_capNhat }}</td>
          <td>{{ $loai->l_trangThai }}</td>
          <td>
            <button class="btn btn-default"><a href="{{ route('loai.edit', ['loai' => $loai->l_ma]) }}">Sua</a></button>
            <form method="POST" action="{{ route('loai.destroy', ['loai' => $loai->l_ma]) }}">
              {{ csrf_field() }}
              {{ method_field('DELETE') }}
              <input type="submit" class="btn btn-danger" value="xoa"/>
            </form>
          </td>
        </tr>
        @endforeach
      </tbody></table>
    </div>
    <!-- /.box-body -->
  </div>

@endsection