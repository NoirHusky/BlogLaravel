<?php

namespace App\Services;

use App\Models\Article;
use App\Models\Tag;

class ArticleService {
    public function updateWithTags($request, Article $article) {
        // delete the image if it exists
        Storage::delete(public_path('storage/' . $article->image_path));
        $pathInfo = [];
        if ( isset($data->image) ) {
            $pathInfo = [
                'image_path' => $request->image->store('images', 'public')
            ];
        }
        $article->update($request->all() + $pathInfo);
    }
    public function createWithTags($data) {
        $pathInfo = [];
        if ( isset($data->image) ) {
            $pathInfo = [
                'image_path' => $request->image->store('images', 'public')
            ];
        }
        $article = Article::create($data + $pathInfo);
         
        // loop through the tags
        foreach ($data['tags'] as $tag) {
            // if the tag is not already in the db, save it.
            $tagModel = Tag::where('title', $tag)->first();
            if ( $tagModel === null ) {
                $tagModel = Tag::create(['title' => $tag]);
            }
            // and save the eloquest relationship of article to tag
            $article->tags()->save($tagModel);
        }
    }
}
