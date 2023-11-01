<?php

namespace App\Http\Controllers\Frontend;
use App\Mail\OrderInvoice;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\order;
use App\Models\Services;
use App\Models\payment;
use Illuminate\Support\Facades\Auth;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Mail;
use App\Mail\mailNotify;
use Exception;

class orderController extends Controller
{
    function checkOutIndex($product_id)
    {

            $services = Services::all();
        return view('frontend.order.checkout', [
            'product_id' => $product_id,
            'services' =>$services,
        ]);



    } //end

    function checkStore(Request $request)

    {
        $alldata = $request->all();

        $request->session()->put('test',   $alldata);

        $request->session()->put('product_id', $alldata['product_id']);


        $services_id = $request->service;

       $afterjson =json_encode($services_id);

     // Store the product ID in the session
$prod = $request->product_id;
$request->session()->put('product_id', $prod);

$product_id = session('product_id');




        if(Auth::user()){

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
                'product_id' =>$product_id,
                'user_id' => Auth::user()->id,
                'order_num' => "#" . Auth::user()->id . rand(10, 9999),

                'car_brand' => $request->carBrand,
                'car_model' => $request->carModel,
                'date' => $request->date,
                'service_id' => $afterjson,



            ]);

            $pdf = PDF::loadView('frontend.auth.invoiceEmail', compact('dataid'))->setOptions(['defaultFont' => 'sans-serif']);

            Mail::send('frontend.auth.invoiceEmail', compact('dataid'), function ($message) use ($dataid, $pdf, $request) {
                $message->to($request->email)
                        ->subject('order invoice')
                        ->attachData($pdf->output(), "invoice.pdf");
            });

            $request->session()->forget('test');
            return view('frontend.contact.success_page');



        }else{
            return redirect()->route('login-index');
        }



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

    function paymentOrder(){

        $orders = order::all();

        return view('admin.order.payment',['orders'=>$orders]);
    }//end

    function paymentInvoiceIndex($id){
        $order_details = order::find($id);

        return view('admin.order.payInvoice',['order_details'=>$order_details]);
    }//end

    function paymentInvoiceStore(Request $request){


             payment::insertGetId([
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => $request->email,
            'order_id' => $request->order_id,
            'user_id' =>$request->user_id,
            'price' =>$request->price,
            'discount' => $request->discount,
            'servics_details' => $request->service_descrip,

        ]);

        return back();


    }//end


    function InvoiceDownload($id){

        $service = payment::find($id);

        $pdf = Pdf::loadView('admin.order.pay.invoice', ['service'=>$service])->setOptions(['defaultFont' => 'sans-serif']);
        return $pdf->stream('invoice-pdf');

    }//end

    function InvoiceAdminDelete($id){
        payment::findOrFail($id)->delete();

    	$notification = array(
			'message' => 'invoice Deleted Successfully',
			'alert-type' => 'success'
		);

		return redirect()->back()->with($notification);


    }//end

    function userPayment(){

        $service = payment::where('user_id',Auth::user()->id)->get();

        return view('frontend.auth.payment',['service'=>$service]);
    }//end

function userPaymentDownload($id){

    $service = payment::find($id);

    $pdf = Pdf::loadView('frontend.auth.userPayment.paymentInvoice', ['service'=>$service])->setOptions(['defaultFont' => 'sans-serif']);
    return $pdf->stream('invoice-pdf');

}//end

}
