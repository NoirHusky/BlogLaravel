<?php

namespace App\Services;

use App\Models\Article;
use App\Models\Tag;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

class ArticleService {
    public function updateWithTags($request, Article $article) {
        DB::beginTransaction();
        // delete the image if it exists
        Storage::delete(public_path('storage/' . $article->image_path));
        $pathInfo = [];
        if ( $request->hasFile('image') ) {
            $pathInfo = [
                'image_path' => $request->image->store('images', 'public')
            ];
        }
        $article->update($request->all() + $pathInfo);
        $tagsId = $this->saveTags($article, $request->input('tags')); 
        $article->tags()->detach();
        $article->tags()->sync($tagsId);
        DB::commit();
    }

    public function createWithTags($request) {
        DB::beginTransaction();
        $pathInfo = [];
        if ( $request->hasFile('image') ) {
            $pathInfo = [
                'image_path' => $request->image->store('images', 'public')
            ];
        }
        $article = Article::create($request->all() + $pathInfo);
        if ( $article === null ) {
            DB::rollBack();
            return;
        }
        $tagsId = $this->saveTags($article, $request->input('tags')); 
        $article->tags()->detach();
        $article->tags()->sync($tagsId);
        DB::commit();
    }

    // TODO: create a tag service container
    // save the tags in a eloquent collection,
    // and loop through each() to save the tag model
    // to the article
    public function saveTags($article, $tags) {
        $tagsId = [];
        // loop through the tags
        foreach ($tags as $tag) {
            // if the tag is not already in the db, save it.
            $tagModel = Tag::where('title', $tag)->first();
            if ( $tagModel === null ) {
                $tagModel = Tag::create(['title' => $tag]);
            }
            $tagsId[] = $tagModel->id;
            // and save the eloquest relationship of article to tag
            $article->tags()->save($tagModel);
        }
        return $tagsId;
    }
}
