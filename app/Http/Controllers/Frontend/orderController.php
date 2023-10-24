<?php

namespace App\Http\Controllers\Frontend;
use App\Mail\OrderInvoice;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\order;
use Illuminate\Support\Facades\Auth;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Mail;
use App\Mail\mailNotify;
use Exception;

class orderController extends Controller
{
    function checkOutIndex($product_id)
    {

        return view('frontend.order.checkout', ['product_id' => $product_id]);
    } //end

    function checkStore(Request $request)
    {

        $data =  order::insertGetId([

            'name' => $request->name,
            'phone' => $request->phone,
            'email' => $request->email,
            'location' => $request->location,
            'product_id' => $request->product_id,
            'user_id' => Auth::user()->id,
            'order_num' => "#" . Auth::user()->id . rand(10, 9999),

        ]);


            Mail::to($request->email)->send(new mailNotify($data));

        return view('frontend.contact.success_page');
    } //end

    function allOrder()
    {

        $orders = order::all();

        return view('admin.order.index', ['orders' => $orders]);
    } //end

    function statusUpdate(Request $request)
    {
        $id = $request->id;


        order::findOrFail($id)->update([

            'status' => $request->status,


        ]);


        $notification = array(
            'message' => 'Status Update Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    } //end

    function invoice($id)
    {

        $orderinfo = order::find($id);
        $pdf = Pdf::loadView('frontend.auth.invoice', ['orderinfo' => $orderinfo,])->setOptions(['defaultFont' => 'sans-serif']);
        return $pdf->stream('invoice-pdf');
    } //end

    function send(){






    }


}
