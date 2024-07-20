<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{
    public function sendPinEmail(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
        ]);

if(User::where('email',$request->email)->exists()){
  $user=  User::where('email',$request->email)->first();
$name =$user->fname." ".$user->lname;
  $pin = rand(1000, 9999);
        $email = $request->input('email');

        $user->pin=$pin;
        $user->save();

        Mail::send('pinmail', ['pin' => $pin,'name'=>$name, 'email' => $email], function ($message) use ($email) {
            $message->to($email)
                    ->subject('Your Temporary Login PIN');
        });

        return response()->json(['message' => 'Email sent successfully'], 200);
}else{
    return response()->json(['message' => 'please provide a valid email'], 400);
}


    }
}
