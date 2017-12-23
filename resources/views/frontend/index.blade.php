<h1>Xin chào, đây là chức năng hiển thị danh sách các chủ đề</h1>

<a href="chude/create">Bấm vào đây để thêm mới</a>
<table class="table" border="1">
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
        <a href="#" type="button">Sửa</a>
        <a href="#" type="button">Xóa</a>
      </td>
    </tr>
    @endforeach
  </tbody>
</table>
