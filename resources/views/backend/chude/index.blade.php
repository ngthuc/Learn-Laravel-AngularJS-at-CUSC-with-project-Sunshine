@extends('backend.layouts.app')

@section('title')
Danh sách Chủ đề
@endsection

@section('page-header')
<h1>
  Danh sách Chủ đề
  <small>Các chủ đề</small>
</h1>
@endsection

@section('content')
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
                  @foreach ($dsChude as $chude)
                  <tr>
                    <td>{{ $chude->cd_ma}}</td>
                    <td>{{ $chude->cd_ten}}</td>
                    <td>{{ $chude->cd_taoMoi}}</td>
                    <td>{{ $chude->cd_capNhat}}</td>
                    <td>{{ $chude->cd_trangThai}}</td>
                    <td>
                      <a href="#" type="button"><span class="label label-primary">Sửa</span></a>
                      <a href="#" type="button"><span class="label label-danger">Xóa</span></a>
                    </td>
                  </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
@endsection
