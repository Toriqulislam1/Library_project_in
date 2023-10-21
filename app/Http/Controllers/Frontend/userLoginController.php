<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class userLoginController extends Controller
{
    function Index(){
        return view('frontend.auth.login');
    }//end

    function loginSuccess(Request $request){

        $email = $request->email;
        $password = $request->password;

        if (Auth::attempt(['email' => $email, 'password' => $password])) {

            return view('frontend.auth.userProfile');
        }else{
            return "wrong";
        }
    }


    function IndexRegister(){

        return view('frontend.auth.register');
    }//end

    function registerStore(){

    }//end




    function userProfile(){
        return view('frontend.auth.userProfile');
    }//end
}
