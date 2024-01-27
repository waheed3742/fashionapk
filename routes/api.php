<?php

use App\Http\Controllers\AddToCartController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\UserInfoController;
use App\Http\Controllers\WishListController;
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
// auth routes
Route::get('/test', function () {
    return 'Test route';
});
Route::post('/login', [LoginController::class, 'login'])->name('login');
Route::post('/register', [RegisterController::class, 'register']);

Route::middleware(['auth:api'])->group(function () {
    Route::get('/test', function () {
        return 'Test route';
    });
    Route::post('/logout', [RegisterController::class, 'logout'])->name('logout');
    Route::post('/update_user/{id}', [UserInfoController::class, 'update'])->name('update_user_data');

    Route::post('/add_category', [CategoryController::class, 'store'])->name('add_category');
    Route::put('/update_category/{id}', [CategoryController::class, 'update'])->name('update_category');
    Route::delete('/delete_category/{id}', [CategoryController::class, 'delete'])->name('delete_category');

    // sub category
    Route::post('/add_sub_categories', [SubCategoryController::class, 'store'])->name('add_sub_category');
    Route::put('/update_sub_categories', [SubCategoryController::class, 'update'])->name('update_sub_category');
    Route::delete('/delete_sub_categories', [SubCategoryController::class, 'delete'])->name('delete_sub_category');

    Route::post('/addSlider', [SliderController::class, 'store']);
    Route::put('/updateSlider/{id}', [SliderController::class, 'update']);
    Route::delete('/deleteSlider/{id}', [SliderController::class, 'delete']);

    Route::post('/addProduct', [ProductController::class, 'store'])->name('addProduct');
});

Route::get('/category', [CategoryController::class, 'index'])->name('fetch_category');

Route::get('/sub_categories', [SubCategoryController::class, 'index'])->name('fetch_sub_category');
Route::get('/fetchSliders', [SliderController::class, 'index']);
Route::get('/products', [ProductController::class, 'getAllProducts'])->name('getAllProducts');
Route::get('/products/category/{categoryId}', [ProductController::class, 'getByCategory']);
Route::get('/products/subcategory/{subcategoryId}', [ProductController::class, 'getBySubcategory']);
Route::get('/products/{id}', [ProductController::class, 'getProductDetails']);

// Wishlist routes
Route::post('/wishlist/add/{product}', [WishListController::class, 'addToWishlist']);
Route::delete('/wishlist/remove/{product}', [WishlistController::class, 'removeFromWishlist']);
Route::get('/wishlist', [WishlistController::class, 'allWishList']);
// addtocart routes
Route::post('/addtocart/add/{product}', [AddToCartController::class, 'addToCart']);
Route::post('/updatecart/update/{product}', [AddToCartController::class, 'updateCart']);
Route::delete('/deletecart/remove/{product}', [AddToCartController::class, 'removeFromCart']);
Route::get('/allcartitem', [AddToCartController::class, 'allCartItem']);
