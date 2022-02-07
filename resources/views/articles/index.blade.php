@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <a href="{{ route('articles.create') }}" class="btn btn-primary mb-4">
            Add new post
        </a>
        <div class="row">
            <div class="col-12">
                @if (session('message'))
                    <div class="alert alert-success">{{ session('message') }}</div>                             
                @endif
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                @forelse($articles as $article)
                    <div class="card mb-4">
                        <img src="{{ asset('storage/' . $article->image_path) }}" style="height: 200px; object-fit: cover" alt="image">
                        <h1 class="card-header">
                            <a href="{{ route('articles.show', $article) }}">{{ $article->title }}</a>
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
                            @foreach($article->tags as $tag)
                                <span class="badge rounded-pill bg-primary">{{ $tag->title }}</span>
                            @endforeach
                        </div>
                    </div>
                @empty
                    No items found...
                @endforelse
            </div>
            <div class="row justify-content-center">
                <div class="col-4">
                    {{ $articles->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
