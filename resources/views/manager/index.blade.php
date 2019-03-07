@extends ('layouts.manager')

@section ('content')

<a href="{{ route('news-add') }}">Add item</a>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Title</th>
      <th scope="col">Category</th>
      <th scope="col">Created at</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    @foreach ($news as $item)
        <tr>
          <th scope="row">{{ $item->id }}</th>
          <td>{{ $item->title }}</td>
          <td>{{ $item->category->name }}</td>
          <td>{{ $item->created_at->toFormattedDateString()}}</td>
          <td>
            <a href="{{ route('news-edit.id', ['id' => $item->id]) }}">Edit</a>
            <a href="{{ route('news-delete.id', ['id' => $item->id]) }}">Delete</a>
          </td>
        </tr>
    @endforeach
  </tbody>
</table>

@endsection
