@extends ('layouts.master')

@section ('content')
    <div class="news-post">
        <h1>{{ $newsItem->title }}</h1>
        <p class="news-meta">{{ $newsItem->created_at->toFormattedDateString() }} // {{ $newsItem->category->name }}</p>
        {!! $newsItem->parseBody() !!}
    </div>
@endsection
