<?php

namespace App\Http\Controllers;

use App\Models\Manufacturar;
use Illuminate\Http\Request;

class MenufacApiController extends Controller
{






    function fetch_manufac($id = null) {
        $manufac = $id ? Manufacturar::where('id', $id)->first() : Manufacturar::all();

        if ($manufac) {
            return response()->json(['status' => 'success', 'manufac' => $manufac], 200);
        } else {
            return response()->json(['status' => 'error', 'message' => 'manufac not found'], 404);
        }
    }






    function addManuFac(Request $request)
    {
        $man = new Manufacturar;
        if ($request->hasFile('logo')) {
            $file = $request->file('logo');
            $extention = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extention;
            $destinationPath = 'assets/logo';
            $file->move($destinationPath, $filename);
            $man->logo = $filename;
        }

        $man->name = $request->name;
        $man->save();
        return response(['message'=>'Manufacture added Successfully']);
    }

    function delMenufac( $id){
        Manufacturar::find($id)->delete();
        return response(['message'=>'Manufacture deleted Successfully']);
      }

}
