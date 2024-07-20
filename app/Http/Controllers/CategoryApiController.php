<?php

namespace App\Http\Controllers;

use App\Models\category;
use App\Models\Product;
use Illuminate\Http\Request;

class CategoryApiController extends Controller
{  
    
    function add_category(Request $request){
         if(!category::where('name',$request->catname)->exists()){
            $cat=new category;
        $cat->name=$request->catname;
        $cat->save();
        }
        
        return response()->json(['message'=>'category added successfully','category'=>$cat]);
    }


function all_cat(){
    $cat=Category::all();
    return response(['category'=>$cat]);
}


function fetch_catProd($name){
    $prod=Product::where('pcat',$name)->get();
    return response()->json(['message'=>'category product fetch successfully','products'=>$prod]);
}

}
