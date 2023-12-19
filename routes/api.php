<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SubCategoryController;
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

Route::post('/login', [LoginController::class, 'login']);
Route::post('/register', [RegisterController::class, 'register']);

Route::get('/category', [CategoryController::class, 'index'])->name('fetch_category');
Route::post('/add_category', [CategoryController::class, 'store'])->name('add_category');
Route::put('/update_category/{id}', [CategoryController::class, 'update'])->name('update_category');
Route::delete('/delete_category/{id}', [CategoryController::class, 'delete'])->name('delete_category');

Route::get('/sub_categories', [SubCategoryController::class, 'index'])->name('fetch_sub_category');
Route::post('/add_sub_categories', [SubCategoryController::class, 'store'])->name('add_sub_category');

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
