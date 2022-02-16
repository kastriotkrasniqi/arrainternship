<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;


    protected $fillable = ['name', 'category_id', 'price', 'status'];

    protected $with = ['category'];


    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}