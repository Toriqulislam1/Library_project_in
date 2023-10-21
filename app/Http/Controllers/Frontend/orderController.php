<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class orderController extends Controller
{
    function checkOutIndex(){
        return view('frontend.order.checkout');
    }
}
