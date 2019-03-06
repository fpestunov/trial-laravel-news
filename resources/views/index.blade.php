@extends ('layouts.master')

@section ('content')

    @foreach ($news as $item)
        <div class="news-post">
            <h2 class="news-title"><a href="{{ route('news.id', ['id' => $item->id]) }}">{{ $item->title }}</a></h2>
            <p class="news-meta">{{ $item->created_at->toFormattedDateString()}}</p>
        </div>
    @endforeach

@endsection
