<?php

namespace App\Http\Requests;

use App\Rules\Tag;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Str;

class ArticleUpdateRequest extends FormRequest
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
            'title'     => 'required|max:45',
            'content'   => 'required',
            'image'     => 'file',
            'tags'      => new Tag,
            'category_id'  => 'required|numeric',
        ];
    }

    public function prepareForValidation() {
        return $this->merge([
            'tags' => explode(',', $this->tags),
            'slug' => Str::slug($this->title),
            'category_id' => $this->category,
        ]);
    }
}
