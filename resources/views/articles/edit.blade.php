@extends('layouts.app')

@section('content')
    <div class="container justify-content-center">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <h3 class="card-header">
                        Edit article
                    </h3>
                    <div class="card-body">
                        @if ( $errors->any() )
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>

                        @endif
                        <form action="{{ route('articles.update', $article) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <label for="title">Title:</label>
                            <input class="form-control" value="{{ $article->title }}" name="title" type="text" placeholder="Title">
                            <label for="image">Image (optional):</label>
                            <input class="form-control" name="image" type="file">

                            <label for="content">Content: </label>
                            <textarea class="form-control" name="content" type="text" placeholder="Body">{{ $article->content }}</textarea>
                            <button class="btn btn-success mt-2" type="submit">Create</button>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection
