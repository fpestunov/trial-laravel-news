<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function scopeFreshFirst($query)
    {
        return $query->orderBy('id', 'desc');
    }   

    public function parseBody()
    {
        return collect(explode("\n\n", $this->body))
                ->map(function ($item) {
                    return "<p>{$item}</p>";
                })->implode("\n");
    }    
}
