<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class ArticleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $title = $this->faker->unique()->text(15); 
        $slug  = Str::slug($title);
        $image_path = $this->faker->image(public_path() . '/images', 100, 100, null, false);
        return [
            'title'     => $title,
            'slug'      => $slug,
            'content'   => $this->faker->text(),
            'image_path'=> '/images/' . $image_path,
        ];
    }
}
