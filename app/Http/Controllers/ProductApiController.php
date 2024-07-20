<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Ramsey\Uuid\Uuid;

class ProductApiController extends Controller
{
    function add_product(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'pname' => 'required',
            'pcat' => 'required',
            'pprice' => 'required',
           
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }
        $uuid = Uuid::uuid4()->toString();
    if(!category::where('name',$request->pcat)->exists()){
            $cat=new category;
        $cat->name=$request->pcat;
        $cat->save();
        }

    

$product=new Product;
if (!empty($request->psupplier)) {
    $product->psupplier = $request->psupplier;
}

if (!empty($request->pcat)) {
    $product->pcat = $request->pcat;
}

if (!empty($request->ptype)) {
    $product->ptype = $request->ptype;
}

if (!empty($request->pmodel)) {
    $product->pmodel = $request->pmodel;
}

if (!empty($request->pname)) {
    $product->pname = $request->pname;
}

if (!empty($request->pprice)) {
    $product->pprice = $request->pprice;
}

if (!empty($request->uuid)) {
    $product->puuid = $request->uuid;
}

if (!empty($request->sku)) {
    $product->sku = $request->sku;
}

if (!empty($request->rprice)) {
    $product->rprice = $request->rprice;
}

if (!empty($request->alert)) {
    $product->alert = $request->alert;
}

if (!empty($request->pdes)) {
    $product->pdes = $request->pdes;
}


$product->save();




        return response()->json(['message' => 'Product created successfully', 'product' => $product], 201);
    }

    public function edit_product(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'pname' => 'sometimes|required',
            'pcat' => 'sometimes|required',
            'pprice' => 'sometimes|required',
         
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        $product = Product::where('id', $request->pid)->first();

        if (!$product) {
            return response()->json(['message' => 'Product not found'], 404);
        }

        // Update the product fields if they are provided in the request
        if ($request->has('pname')) {
            $product->pname = $request->pname;
        }

        if ($request->has('pcat')) {
            $product->pcat = $request->pcat;
        }

        if ($request->has('pprice')) {
            $product->pprice = $request->pprice;
        } 

        $product->save();

        return response()->json(['message' => 'Product updated successfully', 'product' => $product], 200);
    }

    function delete_product($id)
    {

        $product = Product::find($id);

        if (!$product) {
            return response()->json(['message' => 'Product not found'], 404);
        }

        $product->delete();

        return response()->json(['message' => 'Product deleted successfully'], 200);
    }

    function fetch_product($id = null)
    {
        $product = $id ? Product::where('id', $id)->first() : Product::all();

        if ($product) {
            return response()->json(['status' => 'success', 'product' => $product], 200);
        } else {
            return response()->json(['status' => 'error', 'message' => 'product not found'], 404);
        }
    }
}
