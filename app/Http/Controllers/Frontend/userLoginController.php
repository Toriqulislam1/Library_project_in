<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Support\Facades\Hash;


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
    }//end

    function logOut(){

        Auth::logout();

        return redirect('/');


    }//end


    function IndexRegister(){

        return view('frontend.auth.register');
    }//end

    function registerStore(Request $request){


		user::insert([

			'name' => $request->name,
			'mobile' => $request->mobile,
			'email' => $request->email,
			'password' => Hash::make($request->password),

		]);

        return view('frontend.auth.userProfile');
    }//end




    function userProfile(){
        return view('frontend.auth.userProfile');
    }//end
}
