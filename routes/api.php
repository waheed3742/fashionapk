<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\UserInfoController;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
// update user profile
Route::post('/update_user/{id}',[UserInfoController::class, 'update'])->name('update_user_data');
// auth routes
Route::post('/login', [LoginController::class, 'login']);
Route::post('/register', [RegisterController::class, 'register']);
// category
Route::get('/category', [CategoryController::class, 'index'])->name('fetch_category');
Route::post('/add_category', [CategoryController::class, 'store'])->name('add_category');
Route::put('/update_category/{id}', [CategoryController::class, 'update'])->name('update_category');
Route::delete('/delete_category/{id}', [CategoryController::class, 'delete'])->name('delete_category');
// sub category
Route::get('/sub_categories', [SubCategoryController::class, 'index'])->name('fetch_sub_category');
Route::post('/add_sub_categories', [SubCategoryController::class, 'store'])->name('add_sub_category');
Route::put('/update_sub_categories', [SubCategoryController::class, 'update'])->name('update_sub_category');
Route::delete('/delete_sub_categories', [SubCategoryController::class, 'delete'])->name('delete_sub_category');
//slider
Route::get('/fetchSliders', [SliderController::class, 'index']);
Route::post('/addSlider', [SliderController::class, 'store']);
Route::put('/updateSlider/{id}', [SliderController::class, 'update']);
Route::delete('/deleteSlider/{id}', [SliderController::class, 'delete']);

// Product
Route::post('/addProduct', [ProductController::class, 'store'])->name('addProduct');
Route::get('/products/category/{categoryId}', [ProductController::class, 'getByCategory']);
Route::get('/products/subcategory/{subcategoryId}', [ProductController::class, 'getBySubcategory']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
