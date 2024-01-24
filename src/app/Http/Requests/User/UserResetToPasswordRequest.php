<?php

namespace App\Http\Requests\User;

use Illuminate\Foundation\Http\FormRequest;

class UserResetToPasswordRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'phone'                         => ['required', 'max:18'],
        ];
    }

    public function messages(): array
    {
        return [
            'phone.required'                => 'Укажите номер телефона!',
            'phone.max'                     => 'Номер телефона не может быть меньше :max символов!',
        ];
    }
}
