<?php

use App\Http\Controllers\CategoryApiController;
use App\Http\Controllers\CoupenApiController;
use App\Http\Controllers\ProductApiController;
use App\Http\Controllers\TicketApiController;
use Illuminate\Http\Request;
use App\Http\Controllers\MailController;
use App\Http\Controllers\InventoryApiController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DeviceController;
use App\Http\Controllers\MenufacApiController;
use App\Http\Controllers\UserApiController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


// USERS APIS

Route::post('user-register',[UserApiController::class,'user_register']);
Route::post('user-login',[UserApiController::class,'user_login']);
Route::post('user-update',[UserApiController::class,'update_user']);
Route::delete('user-delete/{id}',[UserApiController::class,'delete_user']);
Route::get('user-fetch/{id?}',[UserApiController::class,'fetch_user']);

// PRODUCT API
Route::post('add-product',[ProductApiController::class,'add_product']);
Route::post('edit-product',[ProductApiController::class,'edit_product']);
Route::delete('delete-product/{id}',[ProductApiController::class,'delete_product']);
Route::get('product-fetch/{id?}',[ProductApiController::class,'fetch_product']);


//CATEGORY API

Route::post('add-category',[CategoryApiController::class,'add_category']);
Route::get('fetch-cat-product/{name}',[CategoryApiController::class,'fetch_catProd']);
Route::get('all-cat',[CategoryApiController::class,'all_cat']);

// COUPEN API

Route::post('add-coupen',[CoupenApiController::class,'add_coupen_api']);
Route::post('edit-coupen',[CoupenApiController::class,'edit_coupen_api']);
Route::delete('delete-coupen/{id}',[CoupenApiController::class,'delete_coupen_api']);
Route::get('fetch-coupen/{id?}',[CoupenApiController::class,'fetch_coupen']);

// TICKET API

Route::post('generate-ticket',[TicketApiController::class,'add_ticket']);
Route::get('ticket-record',[TicketApiController::class,'ticketrecord']);
Route::delete('delete-ticket',[TicketApiController::class,'delete_ticket']);
Route::post('update-ticket',[TicketApiController::class,'update_ticket']);
Route::get('fetch-ticket/{id?}',[TicketApiController::class,'fetch_ticket']);


// DEVICE
Route::get('device-fetch/{id?}',[DeviceController::class,'fetch_device']);
Route::post('add-device',[DeviceController::class,'addDevice']);
Route::delete('delete-device/{$id}',[DeviceController::class,'delDevice']);


// Manufacturar
Route::get('fetch-manufac/{id?}',[MenufacApiController::class,'fetch_manufac']);
Route::post('add-manufac',[MenufacApiController::class,'addManuFac']);
Route::delete('delete-manufac/{$id}',[MenufacApiController::class,'delMenufac']);

// Inventory
Route::post('add-inventory',[InventoryApiController::class,'add_inv']);
Route::get('fetch-inventory/{id?}',[InventoryApiController::class,'fetch_inventory']);

// Mail
Route::post('send-pinmail',[MailController::class,'sendPinEmail']);

