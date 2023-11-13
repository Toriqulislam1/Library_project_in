@extends('frontend.front_master')
@section('content')
@section('title')
Book search
@endsection





<!--Start Service-->
	  <section class="dg-service2 pb120 pt0" id="services">
		<div class="container">

			<div class="row upset ">

                @foreach ($services  as $product )
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


	<!--End Service-->







@endsection

@section('footer_script')

@endsection
