@extends('backend.layouts.app')

@section('title')
Danh sach Chu de
@endsection

@section('page-header')
Chu de<small>Cac chu de ve loai hoa</small>
@endsection

@section('content')
<a href="{{ route('chude.create') }}">Bam vao day de them moi du lieu</a>
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
        @foreach($dsChuDe as $chude)
        <tr>
          <td>{{ $chude->cd_ma }}</td>
          <td>{{ $chude->cd_ten }}</td>
          <td>{{ $chude->cd_taoMoi }}</td>
          <td>{{ $chude->cd_capNhat }}</td>
          <td>{{ $chude->cd_trangThai }}</td>
          <td>
            <button class="btn btn-default"><a href="{{ route('chude.edit', ['chude' => $chude->cd_ma]) }}">Sua</a></button>
            <form method="POST" action="{{ route('chude.destroy', ['chude' => $chude->cd_ma]) }}">
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