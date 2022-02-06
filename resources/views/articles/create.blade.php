@extends('layouts.app')

@section('content')
    <div class="container justify-content-center">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <h3 class="card-header">
                        Add a new article
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
                        <form action="{{ route('articles.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <label for="title">Title:</label>
                            <input class="form-control" value="{{ old('title') }}" name="title" type="text" placeholder="Title">

                            <label for="image">Image (optional):</label>
                            <input class="form-control" name="image" type="file">
                            
                            <label for="content">Content: </label>
                            <textarea class="form-control" name="content" type="text" placeholder="Body">{{ old('content') }}</textarea>
                            <button class="btn btn-success mt-2" type="submit">Create</button>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection
