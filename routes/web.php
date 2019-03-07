<?php

Route::get('/', 'NewsController@index');

Route::get('/news/categories/{category}', 'CategoriesController@index');

Route::get('/news/{newsItem}', 'NewsController@show')->name('news.id');

Route::get('/manager/news/create', 'NewsController@create');

Route::get('/manager/news/{id}/edit', 'NewsController@edit');

Route::post('/manager/news', 'NewsController@store');

Route::patch('/manager/news/{id}', 'NewsController@update');

Route::delete('/manager/news/{id}', 'NewsController@destroy');
