<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use App\Models\Category;
use App\Models\Product;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use League\CommonMark\Extension\CommonMark\Node\Inline\Link;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', function () {
    return view('home', ['products' => Product::paginate(8)]);
});


Route::resource('categories', CategoryController::class);
Route::resource('products', ProductController::class);


Route::resource('users', UserController::class);


Route::get('categories/{category:name}', function (Category $category) {
    return view('products.index', ['products' => $category->products], ['categories' => Category::all()]);
});

Auth::routes();