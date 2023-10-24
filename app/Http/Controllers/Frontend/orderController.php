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
        if (Auth::user()){
        return view('frontend.order.checkout', ['product_id' => $product_id]);
        }else{
            return back()->with('loginError','please login first');
        }
    } //end

    function checkStore(Request $request)
    {


        $request->validate([
            'name' => 'required|max:255',
            'phone' => 'required|max:20',
            'email' => 'required',
            'location' => 'required|max:255',

        ]);


        $dataid = order::insertGetId([
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => $request->email,
            'location' => $request->location,
            'product_id' => $request->product_id,
            'user_id' => Auth::user()->id,
            'order_num' => "#" . Auth::user()->id . rand(10, 9999),
        ]);

        $pdf = PDF::loadView('frontend.auth.invoiceEmail', compact('dataid'))->setOptions(['defaultFont' => 'sans-serif']);

        Mail::send('frontend.auth.invoiceEmail', compact('dataid'), function ($message) use ($dataid, $pdf, $request) {
            $message->to($request->email)
                    ->subject('order invoice')
                    ->attachData($pdf->output(), "invoice.pdf");
        });


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
