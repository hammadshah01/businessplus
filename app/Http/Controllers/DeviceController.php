<?php

namespace App\Http\Controllers;

use App\Models\Device;
use Illuminate\Http\Request;

class DeviceController extends Controller
{
    
        function fetch_device($id = null) {
        $device = $id ? Device::where('id', $id)->first() : Device::all();

        if ($device) {
            return response()->json(['status' => 'success', 'device' => $device], 200);
        } else {
            return response()->json(['status' => 'error', 'message' => 'device not found'], 404);
        }
    }


    
function addDevice(Request $request){
  $dev = new Device;
  $dev->name=$request->name;
  $dev->save();
  return response(['message'=>'device addedd Successfully','device'=>$dev]);
}
function delDevice( $id){
  Device::find($id)->delete();
  return response(['message'=>'device deleted Successfully']);
}

}
