<?php

namespace App\Http\Requests\User;

use Illuminate\Foundation\Http\FormRequest;

class UserUpdateRequest extends FormRequest
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
            'id'                            => ['required'],
            'first_name'                    => ['nullable'],
            'last_name'                     => ['nullable'],
            'middle_name'                   => ['nullable'],
            'age'                           => ['nullable'],
            'birth_date'                    => ['nullable'],
            'gender'                        => ['nullable'],
            'role'                          => ['nullable'],
            'weight'                        => ['nullable'],
            'height'                        => ['nullable'],
            'size_cloth'                    => ['nullable'],
            'phone'                         => ['nullable'],
            'email'                         => ['nullable'],
            'description'                   => ['nullable'],
            'password_admin'                => ['nullable'],
        ];
    }

    public function messages(): array
    {
        return [
            'id.required'                   => 'Укажите Id пользователя!',

            'first_name.required'           => 'Укажите имя!',
            'first_name.min'                => 'Имя не может быть меньше :min символов!',

            'last_name.required'            => 'Укажите фамилию!',
            'last_name.min'                 => 'Фамилия не может быть меньше :min символов!',

            'gender.required'               => 'Укажите пол!',
            'role.required'                 => 'Укажите роль!',

            'phone.required'                => 'Укажите фамилию!',
            'phone.max'                     => 'Номер телефона не может быть меньше :max символов!',
            
        ];
    }
}
