<?php

namespace App\Http\Controllers;

use App\News;
use App\Category;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(News $news)
    {
        $news = $news->orderBy('created_at', 'desc')
            ->get();
        return view('news.index', compact('news'));
    }

    public function manager(News $news)
    {
        $news = $news->orderBy('created_at', 'desc')
            ->get();
        return view('manager.index', compact('news'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        return view('manager.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'category' => 'required',
            'body' => 'required',
        ]);

        $news = News::create([
            'title' => request('title'),
            'category_id' => request('category'),
            'body' => str_replace("\r", "", request('body'))
        ]);

        return redirect(route('manager'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\News  $news
     * @return \Illuminate\Http\Response
     */
    public function show(News $newsItem)
    {
        return view('news.show', compact('newsItem'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\News  $news
     * @return \Illuminate\Http\Response
     */
    public function edit(News $newsItem)
    {
        $categories = Category::all();
        return view('manager.edit', compact('newsItem', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\News  $news
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, News $newsItem)
    {
        // dd($newsItem);

        $this->validate($request, [
            'title' => 'required',
            'category' => 'required',
            'body' => 'required',
        ]);

        $newsItem->update([
            'title' => request('title'),
            'category_id' => request('category'),
            'body' => str_replace("\r", "", request('body'))
        ]);

        return redirect(route('manager'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\News  $news
     * @return \Illuminate\Http\Response
     */
    public function destroy(News $newsItem)
    {
        $newsItem->delete();
        return back();
    }
}
