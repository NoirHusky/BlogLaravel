<?php

namespace App\Http\Controllers;

use App\Http\Requests\ArticleStoreRequest;
use App\Http\Requests\ArticleUpdateRequest;
use App\Http\Resources\ArticleResource;
use App\Models\Article;
use App\Models\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $articles = Article::get();   
        return view('articles.index', compact('articles') );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('articles.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ArticleStoreRequest $request)
    {
        // TODO: we are getting the tags as array. Now we need to store in the
        // database
        $path = '/storage/images/noimage.jpeg';
        if ( $request->has('image') ) {
            $path = $request->image->store('images', 'public');
        }

        $article = Article::create($request->all() + [
            'image_path' => $path
        ]);
 
        // loop through the tags
        foreach ($request->tags as $tag) {
            // if the tag is not already in the db, save it.
            $tagModel = Tag::where('title', $tag)->first();
            if ( $tagModel === null ) {
                $tagModel = Tag::create(['title' => $tag]);
            }
            // and save the eloquest relationship of article to tag
            $article->tags()->save($tagModel);
        }

        return redirect()->route('articles.index')->with(
            'message',
            'The article has been created successfully.'
        );
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Article $article)
    {
        return view('articles.show', compact('article')); 
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Article $article)
    {
        return view('articles.edit', compact('article'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ArticleUpdateRequest $request, Article $article)
    {
        Storage::delete(public_path('storage/' . $article->image_path));
        $path = $request->image->store('images', 'public');
        $article->update($request->all() + [
            'image_path' => $path
        ]);
        return redirect()->route('articles.index')->with(
            'message',
            'The article has been updated successfully.'
        );
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Article $article)
    {
        $article->delete();
        return redirect()->route('articles.index')->with(
            'message',
            'The article has been deleted successfully'
        );
    }
}
