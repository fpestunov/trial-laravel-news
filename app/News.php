<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $guarded = [];

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
        return collect(explode("\n", $this->body))
                ->map(function ($item) {
                    return strlen($item) ? "<p>{$item}</p>" : "";
                })->implode("\n");
    }    
}
