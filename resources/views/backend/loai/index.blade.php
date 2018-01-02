@extends('backend.layouts.app')

@section('title')
Danh sách Loại
@endsection

@section('page-header')
<h1>
  Loại
  <small>Các loai</small>
</h1>
@endsection

@section('content')
<a href="{{ route('loai.create') }}">Bấm vào đây để thêm mới dữ liệu</a>
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
                <thead>
                  <tr>
                    <th>Mã</th>
                    <th>Tên</th>
                    <th>Tạo mới</th>
                    <th>Cập nhật</th>
                    <th>Trạng thái</th>
                    <th>Hành động</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($dsLoai as $loai)
                  <tr>
                    <td>{{ $loai->l_ma}}</td>
                    <td>{{ $loai->l_ten}}</td>
                    <td>{{ $loai->l_taoMoi}}</td>
                    <td>{{ $loai->l_capNhat}}</td>
                    <td>{{ $loai->l_trangThai}}</td>
                    <td>
                      <a href="{{ route('loai.edit', ['loai' => $loai->l_ma]) }}" type="button"><span class="btn btn-primary">Sửa</span></a>
                      <form action="{{ route('loai.destroy', ['loai' => $loai->l_ma]) }}" method="post">
                          {{ csrf_field() }}
                          {{ method_field('DELETE') }}
                          <input type="submit" class="btn btn-danger" value="Xóa">
                      </form>
                    </td>
                  </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
@endsection
