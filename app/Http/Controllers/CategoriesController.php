<?php

namespace App\Http\Controllers;

use App\News;
use App\Category;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Category $category)
    {
        $categoryName = $category->name;
        $news = $category->news
            ->sortByDesc('created_at');
        return view('news.index', compact('news', 'categoryName'));
    }
}
