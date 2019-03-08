@extends ('layouts.master')

@section ('content')
    <h1 style="margin-top: 2rem;">
        @if (isset($categoryName))
            {{ ucfirst($categoryName) }} news
        @else
            Last news
        @endif
    </h1>
    @foreach ($news as $item)
        <div class="news-post">
            <h2 class="news-title"><a href="{{ route('news.id', ['id' => $item->id]) }}">{{ $item->title }}</a></h2>
            <p class="news-meta">{{ $item->created_at->toFormattedDateString()}}</p>
        </div>
    @endforeach

@endsection
