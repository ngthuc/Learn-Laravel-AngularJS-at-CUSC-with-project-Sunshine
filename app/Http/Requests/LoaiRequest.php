<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class LoaiRequest extends FormRequest
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
            'l_ten' => 'required|max:10',
            'l_taoMoi' => 'required',
            'l_capNhat' => 'required',
            'l_trangThai' => 'required',
        ];
    }
    
    public function messages()
    {
        return [
            'l_ten.required' => 'Ten khong duoc bo trong',
            'l_ten.max' => 'khong duoc vuot qua :size ky tu',
            'l_taoMoi.required'  => 'A message is required',
        ];
    }
}
