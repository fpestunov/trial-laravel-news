<?php

Route::get('/', 'NewsController@index');

Route::get('/news/categories/{category}', 'CategoriesController@index');

Route::get('/news/{newsItem}', 'NewsController@show')->name('news.id');

Route::get('/manager', 'NewsController@manager');

Route::get('/manager/news/create', 'NewsController@create')->name('news-add');

Route::get('/manager/news/{id}/edit', 'NewsController@edit')->name('news-edit.id');

Route::post('/manager/news', 'NewsController@store');

Route::patch('/manager/news/{id}', 'NewsController@update');

Route::delete('/manager/news/{id}', 'NewsController@destroy')->name('news-delete.id');
