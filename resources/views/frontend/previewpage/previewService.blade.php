@extends('frontend.front_master')
@section('content')
@section('title')
car
@endsection

<!--shop products-->
<section class="shop-products-prvw pt20 pb60">
    <div class="container shop-container">
        <div class="row mt-5">

            <div class="col-lg-8">

                <div class="rpb-shop-prevw">

                    <img src="{{ asset($details->breadcrumb ) }}" class="w-100" alt="img">
                </div>
                <div class="priceoderbtn"><a href="{{ route('checkOut-index',$details->id) }}" class="niwax-btn3" style="padding: 0 16px !important; line-height: 33px !important;">Order Now</a></div>
                <div class="rpb-item-info">
                    <div class="tab-17 tabs-layout">

                        <div class="tab-content" id="myTabContent2">
                            <div class="mt20 tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1a">

                                <h4 class="mb10">Description</h4>

                                <p class="mb30">{!! $details->long_descrip  !!}</p>

                            </div>

                        </div>

                    </div>
                </div>
            </div>

            <div class="col-lg-4">

                <div class="rpb-item-infodv">
                 <strong>OVERVIEW</strong><br><br>
                    {{$details->content_descrip   }}
                </div>

                </div>


            </div>
        </div>
    </div>
</section>



@endsection
