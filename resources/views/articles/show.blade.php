@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card mb-4">
                <img src="{{ asset('storage/' . $article->image_path) }}" style="height: 200px; object-fit: cover" alt="image">
                <h1 class="card-header">
                    {{ $article->title }}
                    @auth
                        <span class="float-end">
                            <a href="{{ route('articles.edit', $article) }}" class="btn btn-secondary"> Edit </a>
                        <form style="display: inline-block" method="POST" action="{{ route('articles.destroy', $article) }}">
                            @csrf
                            @method('DELETE')
                            <button class="ms-2 btn btn-danger" type="submit"> Delete </button>
                        </form>
                    </span>
                    @endauth
                </h1>
                <div class="card-body">
                    {{ $article->content }}
                </div>
                <div class="card-footer">
                    <span>Categories: <span class="badge rounded-pill bg-success">{{ $article->category->title }}</span></span>
                    @foreach($article->tags as $tag)
                        <span class="float-end">Tags: <span class="badge rounded-pill bg-primary">{{ $tag->title }}</span></span>
                    @endforeach
                </div>
            </div>
    </div>
</div>
@endsection
