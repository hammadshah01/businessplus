<?php

namespace App\Http\Controllers;

use App\Models\Coupen;
use Illuminate\Http\Request;

class CoupenApiController extends Controller
{
    function add_coupen_api(Request $request){
        $c =new Coupen;
        $c->rule=$request->rule;
        $c->client_type=$request->clienttype;
        $c->pricestatus=$request->pricestatus;
        $c->startdate=$request->startdate;
        $c->enddate=$request->enddate;
        $c->cprice=$request->cprice;
        $c->save();
        return response()->json(['message' => 'Coupen added successfully','coupen'=>$c], 200);
    }

    function edit_coupen_api(Request $request) {
        $c = Coupen::find($request->cid);
        if(!$c) {
            return response()->json(['error' => 'Coupen not found'], 404);
        }
        if($request->has('rule')) {
            $c->rule = $request->rule;
        }
        if($request->has('client_type')) {
            $c->client_type = $request->client_type;
        }
        if($request->has('pricestatus')) {
            $c->pricestatus = $request->pricestatus;
        }
        if($request->has('startdate')) {
            $c->startdate = $request->startdate;
        }
        if($request->has('enddate')) {
            $c->enddate = $request->enddate;
        }
        if($request->has('cprice')) {
            $c->cprice = $request->cprice;
        }
        $c->save();
    
        return response()->json(['message' => 'Coupen updated successfully','coupen'=>$c], 200);
    }

    function delete_coupen_api($id) {
        $c = Coupen::find($id);
        if(!$c) {
            return response()->json(['error' => 'Coupen not found'], 404);
        }
    
        $c->delete();
    
        return response()->json(['message' => 'Coupen deleted successfully'], 200);
    }
    


    function fetch_coupen($id = null)
    {
        $tick = $id ? Coupen::where('id', $id)->first() : Coupen::all();

        if ($tick) {
            return response()->json(['status' => 'success', 'Coupen' => $tick], 200);
        } else {
            return response()->json(['status' => 'error', 'message' => 'Coupen not found'], 404);
        }
    }
    
}
