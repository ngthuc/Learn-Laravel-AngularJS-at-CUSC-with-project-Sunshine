@extends('backend.layouts.app')

@section('title')
Danh sach Sản phẩm
@endsection

@section('page-header')
Sản phẩm<small>Cac sản phẩm</small>
@endsection

@section('content')
<a href="{{ route('sanpham.create') }}">Bam vao day de them moi du lieu</a>
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
          <th>Giá gốc</th>
          <th>Giá bán</th>
          <th>Hình</th>
          <th>Thông tin</th>
          <th>Đánh giá</th>
          <th>Ngay tao moi</th>
          <th>Ngay cap nhat</th>
          <th>Trang thai</th>
          <th>Loại</th>
          <th>Action</th>
        </tr>
        @foreach($dsSanPham as $sanpham)
        <tr>
          <td>{{ $sanpham->sp_ma }}</td> 
          <td>{{ $sanpham->sp_ten }}</td>
          <td>{{ $sanpham->sp_giaGoc }}</td>
          <td>{{ $sanpham->sp_giaBan }}</td>
          <td><img src="{{ asset('upload/' . $sanpham->sp_hinh) }}" width="50px" height="50px" /></td>
          <td>{{ $sanpham->sp_thongTin }}</td>
          <td>{{ $sanpham->sp_danhGia }}</td>
          <td>{{ $sanpham->sp_taoMoi }}</td>
          <td>{{ $sanpham->sp_capNhat }}</td>
          <td>{{ $sanpham->sp_trangThai }}</td>
          <td>{{ $sanpham->loai->l_ten }}</td>
          <td>
            <button class="btn btn-default"><a href="{{ route('sanpham.edit', ['sanpham' => $sanpham->sp_ma]) }}">Sua</a></button>
            <form method="POST" action="{{ route('sanpham.destroy', ['sanpham' => $sanpham->sp_ma]) }}">
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
