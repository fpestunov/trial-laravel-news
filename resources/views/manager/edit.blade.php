@extends('layouts.manager')

@section('content')
<div class="container">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">Edit News</div>

            <div class="card-body">
                <form method="POST" action="{{ route('news-update.id', ['id' => $newsItem->id]) }}">
                    {{ method_field('PATCH') }}
                    @csrf
                    @include('errors')
                    <div class="form-group">
                        <label for="title">Title:</label>
                        <input name="title" type="text" class="form-control {{ $errors->has('title') ? 'is-invalid' : '' }}" value="{{ $errors->has('title') ? old('title') : $newsItem->title }}" required>
                    </div>

                    <div class="form-group">
                        <label for="category">Category:</label>
                        <select class="form-control" name="category" required>
                        @foreach ($categories as $category)
                          <option value="{{ $category->id }}"{{ ($category->id === $newsItem->category_id) ? ' selected' : '' }}>{{ $category->name }}</option>
                        @endforeach
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="body">Body:</label>
                        <textarea name="body" id="body" class="form-control {{ $errors->has('body') ? 'is-invalid' : '' }}" rows="8" required>{{ $errors->has('body') ? old('body') : $newsItem->body }}</textarea>
                    </div>

                    <button type="submit" class="btn btn-primary">Publish</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
