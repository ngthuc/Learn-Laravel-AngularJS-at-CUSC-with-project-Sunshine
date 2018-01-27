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
      <th>ID</th>
      <th>Name</th>
      <th>Price</th>
      <th>Quantity</th>
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
