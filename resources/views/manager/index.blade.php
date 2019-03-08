@extends ('layouts.manager')

@section ('content')

<div class="float-right" style="margin-bottom: 1rem;">
  <a href="{{ route('news-create') }}" class="btn btn-primary" role="button">Add item</a>
</div>

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
            <div class="btn-group" role="group" aria-label="Edit & Delete">
              <a href="{{ route('news-edit.id', ['id' => $item->id]) }}" class="btn btn-primary btn-sm" role="button">Edit</a>
              <form method="POST" action="{{ route('news-delete.id', ['id' => $item->id]) }}">
                  @method('DELETE')
                  @csrf
                  <button type="submit" class="btn btn-danger btn-sm">Delete</button>
              </form>
            </div>
          </td>
        </tr>
    @endforeach
  </tbody>
</table>

@endsection
