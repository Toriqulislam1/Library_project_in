<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\order;
use Illuminate\Support\Facades\Auth;

class orderController extends Controller
{
    function checkOutIndex($product_id){

        return view('frontend.order.checkout',['product_id'=>$product_id]);
    }//end

    function checkStore(Request $request){

        order::insert([

			'name' => $request->name,
			'phone' => $request->phone,
			'email' => $request->email,
			'location' => $request->email,
			'product_id' => $request->product_id,
			'user_id' => Auth::user()->id,

		]);

        return view('frontend.contact.success_page');

    }//end

    function allOrder(){

        $orders = order::all();

        return view('admin.order.index',['orders'=>$orders]);
    }//end

    function statusUpdate( Request $request){
         $id = $request->id;


        order::findOrFail($id)->update([

			'status' => $request->status,


		]);


		$notification = array(
			'message' => 'Status Update Successfully',
			'alert-type' => 'success'
		);

		return redirect()->back()->with($notification);



    }



}
