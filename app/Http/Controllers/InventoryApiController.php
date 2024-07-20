<?php

namespace App\Http\Controllers;

use App\Models\Inventory;
use Illuminate\Http\Request;

class InventoryApiController extends Controller
{
    public function add_inv(Request $request)
    {
        $product = new Inventory();

        if ($request->prodtype) $product->prodtype = $request->prodtype;
        if ($request->brandname) $product->brandname = $request->brandname;
        if ($request->prodname) $product->prodname = $request->prodname;
        if ($request->model) $product->model = $request->model;
        if ($request->carrier) $product->carrier = $request->carrier;
        if ($request->category) $product->category = $request->category;
        if ($request->supplier) $product->supplier = $request->supplier;
        if ($request->color) $product->color = $request->color;
        if ($request->storage) $product->storage = $request->storage;
        if ($request->phycond) $product->phycond = $request->phycond;
        if ($request->sku) $product->sku = $request->sku;
        if ($request->rprice) $product->rprice = $request->rprice;
        if ($request->mrprice) $product->mrprice = $request->mrprice;
        if ($request->wprice) $product->wprice = $request->wprice;
        if ($request->mwprice) $product->mwprice = $request->mwprice;
        if ($request->imei) $product->imei = $request->imei;
        if ($request->prodesc) $product->prodesc = $request->prodesc;
        if ($request->aiproddesc) $product->aiproddesc = $request->aiproddesc;

        $product->save();

        return response(['message' => 'Inventory Product added successfully', 'product' => $product]);
    }


    function fetch_inventory($id = null) {
        $inventory = $id ? Inventory::where('id', $id)->first() : Inventory::all();

        if ($inventory) {
            return response()->json(['status' => 'success', 'inventory' => $inventory], 200);
        } else {
            return response()->json(['status' => 'error', 'message' => 'inventory not found'], 404);
        }
    }



}
