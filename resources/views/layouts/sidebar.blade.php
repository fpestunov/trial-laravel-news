<aside class="col-md-4 blog-sidebar">
  <div class="p-3">
    <h4 class="font-italic">Categories</h4>
    <div class="list-group">
        @foreach ($categories as $category)
            <a href="/news/categories/{{ $category }}" class="list-group-item list-group-item-action">
              {{ $category }}
            </a>
        @endforeach
    </div>  
  </div>
</aside>

