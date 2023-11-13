@extends('frontend.front_master')
@section('content')
@section('title')
Books
@endsection
@php
$setting = App\Models\setting::find(1);
@endphp

<div class="onloadpage" id="page_loader">
    <div class="pre-content">
    <div class="logo-pre"> <img src="{{ asset($setting->logo) }}" alt="Logo" class="mega-darks-logo" /></div>
    </div>
    </div>



    <section class="dg-service2 pad-tb" id="services">
    <div class="container">
    <div class="row justify-content-center">
    <div class="col-lg-8">
    <div class="common-heading text-center">

    <h2 class="mb30"> All Books </h2>
    </div>
    </div>
    </div>

    <div class="fieldsets row">

    <div class="row justify-content-center">
        @php
            $products = App\Models\Services::all();
        @endphp
        @foreach ($products  as $product )
            <div class="col-lg-4 col-sm-6 mt30 wow fadeIn" data-wow-delay=".2s">
            <div class="isotope_item h-scl-">

            <div class="item-image h-scl-base">
            <a href="{{ route('details-service-page',$product->id) }}"><img src="{{ $product->thamble }}" alt="portfolio" class="img-fluid"> </a>
            </div>
            <div class="item-info">
                @if($product->quentiry <= 0)
                <p> out of stock</p>
            @else
                <p>Available: {{ $product->quentiry }} units</p>
            @endif
            <h4><a href="{{ route('details-service-page',$product->id) }}">{{ $product->content_title  }}</a></h4>
            </div>

            <div class="priceoderbtn"><a href="{{ route('checkOut-index',$product->id) }}" class="niwax-btn3" style="padding: 0 16px !important; line-height: 33px !important;">Request for Book</a></div>
            </div>
            </div>
        @endforeach

    </div>
    </div>
    </section>





</section>

</body>

@endsection
