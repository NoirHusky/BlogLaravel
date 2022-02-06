<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ArticleResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'image'     => $request->file('image'),
            'title'     => $request->input('title'),
            'content'   => $request->input('content'),
            'slug'      => $request->input('slug'),
        ]; 
    }
}
