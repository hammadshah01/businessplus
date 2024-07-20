<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use PDO;

class UserApiController extends Controller
{
   function user_register(Request $request)  {
    $validator = Validator::make($request->all(), [
        'fname' => 'required|string|max:255',
        'lname' => 'required|string|max:255',
        'email' => 'required|string|email|max:255|unique:users',
        'state' => 'required|string|max:255',
        'country' => 'required|string|max:255',
        'zipcode' => 'required|string|max:255',
        'address1' => 'required|string|max:255',
        'address2' => 'nullable|string|max:255',
        'cname' => 'required|string|max:255',
        'cemail' => 'required|string|email|max:255',
        'cphone' => 'required|string|max:255',
        'clocation' => 'required|string|max:255',
        'clogo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048', 
        'phone' => 'required|string|max:255',
        'username' => 'required|string|max:255|unique:users',
        'pin' => 'required|string|max:255',
       
    ]);

    if ($validator->fails()) {
        return response()->json($validator->errors(), 422);
    }
    if ($request->hasfile('clogo')) {
        $file1 = $request->file('clogo');
        $extention = $file1->getClientOriginalExtension();
        $filename1 = time() . '.' . $extention;
        $destinationPath = 'assets/logo';
        $file1->move($destinationPath, $filename1);
      
    }
    $user = User::create([
        'fname' => $request->fname,
        'lname' => $request->lname,
        'email' => $request->email,
        'state' => $request->state,
        'country' => $request->country,
        'zipcode' => $request->zipcode,
        'address1' => $request->address1,
        'address2' => $request->address2,
        'cname' => $request->cname,
        'cemail' => $request->cemail,
        'cphone' => $request->cphone,
        'clocation' => $request->clocation,
        'phone' => $request->phone,
        'username' => $request->username,
        'pin' => $request->pin,
        'role'=>'user',
        'clogo'=>$filename1
        
    ]);

    return response()->json(['message' => 'User registered successfully', 'user' => $user], 201);
}


function user_login(Request $request){
    $validator = Validator::make($request->all(), [
        'email' => 'required|string|email',
        'pin' => 'required|string',
    ]);

    if ($validator->fails()) {
        return response()->json($validator->errors(), 422);
    }
    $user = User::where('email', $request->email)->first();

    if (!$user || $user->pin !== $request->pin) {
        return response()->json(['message' => 'Invalid email or pin'], 401);
    }

    return response()->json([
        'message' => 'Login successful',
        'user' => $user,
    ], 200);
}








function update_user(Request $request) {
    $user = User::find($request->userid);

    if (!$user) {
        return response()->json(['message' => 'User not found'], 404);
    }

    $validator = Validator::make($request->all(), [
        'fname' => 'sometimes|required|string|max:255',
        'lname' => 'sometimes|required|string|max:255',
        'email' => 'sometimes|required|string|email|max:255|unique:users,email,' . $user->id,
        'state' => 'sometimes|required|string|max:255',
        'country' => 'sometimes|required|string|max:255',
        'zipcode' => 'sometimes|required|string|max:255',
        'address1' => 'sometimes|required|string|max:255',
        'address2' => 'nullable|string|max:255',
        'cname' => 'sometimes|required|string|max:255',
        'cemail' => 'sometimes|required|string|email|max:255',
        'cphone' => 'sometimes|required|string|max:255',
        'clocation' => 'sometimes|required|string|max:255',
        'clogo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        'phone' => 'sometimes|required|string|max:255',
        'username' => 'sometimes|required|string|max:255|unique:users,username,' . $user->id,
        'pin' => 'sometimes|required|string|max:255',
    ]);

    if ($validator->fails()) {
        return response()->json($validator->errors(), 422);
    }

    if ($request->hasFile('clogo')) {
        $file1 = $request->file('clogo');
        $extention = $file1->getClientOriginalExtension();
        $filename1 = time() . '.' . $extention;
        $destinationPath = 'assets/logo';
        $file1->move($destinationPath, $filename1);
        $user->clogo = $filename1;
    }

    // Update only provided fields
    $user->update($request->only([
        'fname', 'lname', 'email', 'state', 'country', 'zipcode', 
        'address1', 'address2', 'cname', 'cemail', 'cphone', 
        'clocation', 'phone', 'username', 'pin'
    ]));

    return response()->json(['message' => 'User updated successfully', 'user' => $user], 200);
}







function fetch_user($id = null) {
    $user = $id ? User::where('id', $id)->first() : User::all();
    
    if ($user) {
        return response()->json(['status' => 'success', 'user' => $user], 200);
    } else {
        return response()->json(['status' => 'error', 'message' => 'User not found'], 404);
    }
}

function delete_user($id) {
    $user = User::find($id);

    if (!$user) {
        return response()->json(['message' => 'User not found'], 404);
    }

    $user->delete();

    return response()->json(['message' => 'User deleted successfully'], 200);
}


}


   
