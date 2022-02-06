@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card mb-4">
                <h1 class="card-header">
                    {{ $article->title }}
                    @auth
                        <a href="{{ route('articles.edit', $article) }}" class="btn btn-secondary float-end"> Edit </a>
                    @endauth
                </h1>
                <div class="card-body">
                    {{ $article->content }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
