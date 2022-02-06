<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Str;

class ArticleStoreRequest extends FormRequest
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
            'title'     => 'required|unique:articles|max:45',
            'content'   => 'required',
            'image'     => 'file',
        ];
    }

    public function prepareForValidation() {
        return $this->merge([
            'slug' => Str::slug($this->title),
        ]);
    }
}
