<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\StudentController;

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

Route::get('/data-product', [ProductController::class, 'index'])->name('data-product');
Route::get('/show-product/{id}', [ProductController::class, 'show'])->name('show-product');

Route::get('/data-student', [StudentController::class, 'index'])->name('data-student');
Route::get('/show-student/{nim}', [StudentController::class, 'showByNim'])->name('show-student');
Route::get('/show-student/{prodi}', [StudentController::class, 'showByProdi'])->name('show-student');
