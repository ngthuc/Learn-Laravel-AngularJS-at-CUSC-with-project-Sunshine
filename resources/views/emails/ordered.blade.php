@component('mail::message')
# Xin chào

Bạn đã đặt hàng thành công.

@component('mail::button', ['url' => 'http://sunshine.com/'])
Nhấn vào đây để xác nhận đơn hàng
@endcomponent

{{ $data->aaa }}
{{ $data['111'] }}

Cám ơn quý khách,<br>
{{ config('app.name') }}
@endcomponent
