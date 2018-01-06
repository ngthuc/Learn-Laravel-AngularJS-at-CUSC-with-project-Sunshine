<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ChuDeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'cd_ten' => 'required|max:20',
            'cd_taoMoi' => 'required',
            'cd_capNhat' => 'required',
            'cd_trangThai' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'cd_ten.required' => 'Tên chủ đề không được phép để trống',
            'cd_ten.max' => 'Tên chủ đề không được vượt quá :max ký tự',
            'cd_taoMoi.required' => 'Không được phép để trống giá trị ngày tạo',
            'cd_capNhat.required' => 'Không được phép để trống giá trị ngày cập nhật',
            'cd_trangThai.required' => 'Không được phép để trống giá trị trạng thái',
        ];
    }
}
