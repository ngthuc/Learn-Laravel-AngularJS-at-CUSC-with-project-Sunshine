@component('mail::message')
# Xin chào

Bạn đã đặt hàng thành công.

@component('mail::button', ['url' => 'http://sunshine.com/'])
Nhấn vào đây để xác nhận đơn hàng
@endcomponent

Đây là sản phẩm bạn vừa mua

<table border="1">
  <thead>
    <tr>
      <th>Mã số</th>
      <th>Tên sản phẩm</th>
      <th>Giá bán</th>
      <th>Số lượng</th>
    </tr>
  </thead>
  <tbody>
    @foreach($data['data']['items'] as $item)
    <tr>
      <td>{{ $item['id'] }}</td>
      <td>{{ $item['name'] }}</td>
      <td>{{ $item['price'] }}</td>
      <td>{{ $item['quantity'] }}</td>
    </tr>
    @endforeach
  </tbody>
</table>

Tổng giá trị đơn hàng là: {{ $data['data']['totalCost'] }}

Cám ơn quý khách,<br>
{{ config('app.name') }}
@endcomponent
