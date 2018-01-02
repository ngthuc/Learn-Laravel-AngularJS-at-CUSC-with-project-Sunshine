@extends('backend.layouts.app')

@section('title')
Danh sách Sản phẩm
@endsection

@section('page-header')
<h1>
  Sản phẩm
  <small>Các sản phẩm</small>
</h1>
@endsection

@section('content')
<a href="{{ route('sanpham.create') }}">Bấm vào đây để thêm mới dữ liệu</a>
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
                    <th>Giá gốc</th>
                    <th>Giá bán</th>
                    <th>Hình ảnh</th>
                    <th>Thông tin</th>
                    <th>Đánh giá</th>
                    <th>Cập nhật</th>
                    <th>Trạng thái</th>
                    <th>Loại</th>
                    <th>Hành động</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($dsSanpham as $sanpham)
                  <tr>
                    <td>{{ $sanpham->sp_ma}}</td>
                    <td>{{ $sanpham->sp_ten}}</td>
                    <td>{{ $sanpham->sp_giaGoc}}</td>
                    <td>{{ $sanpham->sp_giaBan}}</td>
                    <td>{{ $sanpham->sp_hinh}}</td>
                    <td>{{ $sanpham->sp_thongTin}}</td>
                    <td>{{ $sanpham->sp_danhGia}}</td>
                    <td>{{ $sanpham->sp_capNhat}}</td>
                    <td>{{ $sanpham->sp_trangThai}}</td>
                    <td>{{ $sanpham->loai->l_ten}}</td>
                    <td>
                      <a href="{{ route('sanpham.edit', ['sanpham' => $sanpham->sp_ma]) }}" type="button"><span class="btn btn-primary">Sửa</span></a>
                      <form action="{{ route('sanpham.destroy', ['sanpham' => $sanpham->sp_ma]) }}" method="post">
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
