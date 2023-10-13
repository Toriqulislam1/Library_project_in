@extends('frontend.front_master')
@section('content')
@section('title')
intertrade
@endsection

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<!--Start Hero Slider-->
<section class="hero-slider hero-style">
   <div class="swiper-container">
      <!-- start swiper-wrapper -->
       <div class="swiper-wrapper">
          @php

          $slider = App\Models\slide::latest()->get();

          @endphp

          @foreach ($slider as $item )

         <div class="swiper-slide">
             <a href="{{ $item->slide_link}}">
                <div class="slide-inner slide-bg-image"  data-background=" {{asset($item->slide_photo)}}">

                    <div class="container">
                       <div data-swiper-parallax="300" class="slide-title">
                          <h2 style="width:50px">{{ $item->slide_title}}</h2>
                       </div>
                       {{--  <div data-swiper-parallax="400" class="slide-text">
                          <p>{!! Str::limit($item->slide_description, 50)  !!}</p>
                       </div>  --}}
                       <div class="clearfix"></div>
                    </div>
                 </div>
             </a>
          </div>
          @endforeach

       </div>
       <!-- end swiper-wrapper -->
       <!-- swipper controls -->
       <div class="swiper-pagination"></div>
       <div class="swiper-button-next"></div>
       <div class="swiper-button-prev"></div>
        <!-- swipper controls -->
    </div>
</section>

  {{--  custom template  --}}
  <div class="shedul p-3 ">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="content text-center text-white  border-right">
            <h4>OPENING TIMES</h4>
            <p>Monday – Friday: 09:00 – 18:00</p>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="content text-center text-white">
            <h4>CONTACT US</h4>
            <p>AL-MODINA TOWER, 8TH FLOOR-D
88/89 AGRABAD C/A, CHATTOGRAM,
BANGLADESH.
<br>PHONE: +8802333312689
CELL: +8801535880909
 </p>
          </div>
        </div>
      </div>
    </div>
  </div>
  {{--  custom template end  --}}


<!--End Hero Slider-->


        @php
        $clients = App\Models\Client::orderBy('id','desc')->get();
        @endphp
	<div class="container">

		<div class="weworkfor pt20 pb20 dark-bg2">
			<div class="container">

				<div class="logo-weworkfor owl-carousel">
				@foreach($clients as $item)
                <div style="display:flex;flex-direction: column;">
                    <a href="{{$item->client_title}}" target="blank">
    					<div class="items" style="text-align: center"><img src="{{ asset($item->client_logo)}}" alt="clients" class="img100w">
    					</div>
                    </a>
                    <a style="text-decoration:none; width:100px" href="{{$item->client_title}}" target="blank">
                    <span>{{$item->orginal_title}}</span>
                </a>
                </div>

					@endforeach
				</div>

			</div>
		</div>

		</div>

{{-- mobile product show with carousl --}}


@php
        $Services = App\Models\Services::orderBy('id','desc')->get();
 @endphp
	<div class="container mobileView">

		<div class="weworkfor pt20 pb20 dark-bg2">
			<div class="container">

				<div class="logo-weworkfor owl-carousel">
				@foreach($Services as $item)
                <div style="display:flex;flex-direction: column;">
                    <a href="{{route('serviceDetails', $item->id)}}" target="blank">
    					<div class="items" style="text-align: center"><img src="{{ asset($item->thamble)}}" alt="clients" class="img100w">
    					</div>
                    </a>
                    <a style="text-decoration:none; width:100px" href="{{route('serviceDetails', $item->id)}}" target="blank">
                    <span>{{$item->content_slide_title}}</span>
                </a>
                </div>

					@endforeach
				</div>

			</div>
		</div>

		</div>

{{--end mobile product show with carousl --}}



	<!--Start Service-->
	  {{--  <section class="dg-service2 pb120 pt0" id="services">
		<div class="container">
		<div class="row justify-content-center">
							<div class="col-lg-6">
								<div class="common-heading ptag">

									<h2>Services We Offer</h2>

								</div>
							</div>
						</div>
			<div class="row upset ">

			@php
		        $services = App\Models\Services::orderBy('content_title','desc')->limit(4)->get();
	    	@endphp

			@foreach($services as $item)
				<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
					<div class="s-block up-hor">
						<div class="nn-card-set">
						<a href="{{ url('services/details/'.$item->id.'/'.$item->content_title ) }}">
							<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset($item->thamble) }}" alt="service" class="img-fluid" /></div>
                            <div class="p-3">
                                <h6>{{ $item->content_title}}</h6>
                                Learn More <i class="fas fa-chevron-right fa-icon"></i>
                            </div>
                        </a>
						</div>
					</div>
				</div>
				@endforeach

			</div>
		</div>
		<div class="row">
        <div class="col-lg-12 maga-btn mt60">
          <a href="{{route('all-services')}}" class="btn-outline">View More Services<i class="fas fa-chevron-right fa-icon"></i></a>
        </div>
      </div>
	</section>  --}}


	<!--End Service-->

		{{-- start steel melll waste --}}

		<section class="dg-service2 pb120 pt0" id="services">
			<div class="container">
			<div class="row justify-content-center">
								<div class="col-lg-6">
									<div class="common-heading ptag">

										<h2>Steel Mill Waste</h2>

									</div>
								</div>
							</div>
				<div class="row upset ">

					{{--  @php
					$services = App\Models\Services::where('category_id','12')->limit(4)->get();
					@endphp  --}}

				{{--  @foreach($services as $item)  --}}

						{{-- SteelWaste product 1  --}}
					<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
						<div class="s-block up-hor">
							<div class="nn-card-set">
							<a href="https://intertradebd.com/services/subcategory/48/zinc-ash-(induction-furnace-dust)">
								<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/SteelWaste/1.Zinc Ash.jpg') }}" alt="service" class="img-fluid" /></div>
								<div class="p-3">
									<h6>Zinc Ash</h6>
									Learn More <i class="fas fa-chevron-right fa-icon"></i>
								</div>
							</a>
							</div>
						</div>
					</div>
					{{-- end SteelWaste product 1  --}}
						{{-- SteelWaste product 2  --}}
					<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
						<div class="s-block up-hor">
							<div class="nn-card-set">
							<a href="https://intertradebd.com/services/subcategory/48/zinc-ash-(induction-furnace-dust)">
								<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/SteelWaste/2. Test Report Zinc Ash.jpg') }}" alt="service" class="img-fluid" /></div>
								<div class="p-3">
									<h6>Test Report Zinc Ash</h6>
									Learn More <i class="fas fa-chevron-right fa-icon"></i>
								</div>
							</a>
							</div>
						</div>
					</div>
					{{-- end SteelWaste product 2  --}}

{{-- SteelWaste product 3  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/49/eafd-(electric-arc-furnace-dust)">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/SteelWaste/3. EAF Dust.jpg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>EAF Dust</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end SteelWaste product 3  --}}


{{-- SteelWaste product 4  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/49/eafd-(electric-arc-furnace-dust)">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/SteelWaste/4. Test Report EAFD.jpg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>Test Report EAFD</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end SteelWaste product 4  --}}

{{-- SteelWaste product 5  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/50/mill-scale">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/SteelWaste/5. Mill Scale.jpg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>Mill Scale</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end SteelWaste product 5  --}}

{{-- SteelWaste product 6  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/50/mill-scale">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/SteelWaste/6. Test Report Mill Scale.jpeg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>Test Report Mill Scale</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end SteelWaste product 6  --}}

{{-- SteelWaste product 7  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/51/iron-red-oxide">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/SteelWaste/7. Iron Red Oxide.jpg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>Iron Red Oxide</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end SteelWaste product 7  --}}


{{-- SteelWaste product 8  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/51/iron-red-oxide">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/SteelWaste/8. Test Report Red Oxide.jpg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>Test Report Red Oxide</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end SteelWaste product 8  --}}

					{{--  @endforeach  --}}

				</div>
			</div>


		</section>

		{{-- end steel melll waste --}}

{{-- start Steel Scrap --}}

<section class="dg-service2 pb120 pt0" id="services">
	<div class="container">
	<div class="row justify-content-center">
						<div class="col-lg-6">
							<div class="common-heading ptag">

								<h2>Steel Scrap</h2>

							</div>
						</div>
					</div>
		<div class="row upset ">

			{{--  @php
			$services = App\Models\Services::where('category_id','23')->limit(4)->get();
			@endphp  --}}

		{{--  @foreach($services as $item)  --}}

		{{--  Steel Scrap product 1  --}}
			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/services/subcategory/58/hms-scrap">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/Scrap/1. HMS (1).jpg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6> HMS </h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>
	{{-- end Steel Scrap product 1  --}}

	{{--  Steel Scrap product 2  --}}
	<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
		<div class="s-block up-hor">
			<div class="nn-card-set">
			<a href="https://intertradebd.com/services/subcategory/58/hms-scrap">
				<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/Scrap/2. HMS.jpg') }}" alt="service" class="img-fluid" /></div>
				<div class="p-3">
					<h6> HMS </h6>
					Learn More <i class="fas fa-chevron-right fa-icon"></i>
				</div>
			</a>
			</div>
		</div>
	</div>
{{-- end Steel Scrap product 2  --}}

	{{--  Steel Scrap product 3  --}}
	<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
		<div class="s-block up-hor">
			<div class="nn-card-set">
			<a href="https://intertradebd.com/services/subcategory/56/abc-scrap">
				<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/Scrap/3. Aluminium.jpg') }}" alt="service" class="img-fluid" /></div>
				<div class="p-3">
					<h6>Aluminium</h6>
					Learn More <i class="fas fa-chevron-right fa-icon"></i>
				</div>
			</a>
			</div>
		</div>
	</div>
{{-- end Steel Scrap product 3  --}}

{{--  Steel Scrap product 4  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/56/abc-scrap">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/Scrap/4. Brass.jpg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>Brass</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end Steel Scrap product 4  --}}

{{--  Steel Scrap product 5  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/56/abc-scrap">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/Scrap/5. Copper.jpg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>Copper</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end Steel Scrap product 5  --}}

{{--  Steel Scrap product 6  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/56/abc-scrap">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/Scrap/6. Stainless Steel.jpg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>Stainless Steel</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end Steel Scrap product 6  --}}

{{--  Steel Scrap product 7  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/56/abc-scrap">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/Scrap/7 .jpeg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>Cast iron engine block</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end Steel Scrap product 7  --}}


{{--  Steel Scrap product 8  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/56/abc-scrap">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/Scrap/8.jpeg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>Cast iron drum</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end Steel Scrap product 8  --}}










			{{--  @endforeach  --}}

		</div>
	</div>


</section>

{{-- end Steel Scrap --}}


{{-- start abid argro --}}

<section class="dg-service2 pb120 pt0" id="services">
	<div class="container">
	<div class="row justify-content-center">
						<div class="col-lg-6">
							<div class="common-heading ptag">

								<h2>Abid agro</h2>

							</div>
						</div>
					</div>
		<div class="row upset ">

			{{--  @php
			$services = App\Models\Services::where('category_id','22')->limit(4)->get();
			@endphp  --}}

		{{--  @foreach($services as $item)  --}}

		{{--  Abid agro product 1  --}}
			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/services/subcategory/54/fresh-vegetable">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/AbidAgro/1. Vegetable Dharosh.jpeg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6>Vegetable Dharosh</h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>
			{{-- end Abid agro product 1  --}}

{{--  Abid agro product 2  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/54/fresh-vegetable">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/AbidAgro/2. Korola.jpeg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>Korola</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end Abid agro product 2  --}}

{{--  Abid agro product 3  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/52/fish">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/AbidAgro/3. Fish -Baila.jpeg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>Fish Baila</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end Abid agro product 3  --}}


{{--  Abid agro product 4  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/52/fish">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/AbidAgro/4. Fish-Elish.jpeg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>Fish Elish</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end Abid agro product 4  --}}


{{--  Abid agro product 5  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/55/potato">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/AbidAgro/5. Potato.jpg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6> Potato</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end Abid agro product 5  --}}


{{--  Abid agro product 6  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/55/potato">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/AbidAgro/6. Potato.jpg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6> Potato</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end Abid agro product 6  --}}


{{--  Abid agro product 7  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/53/fish-scale">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/AbidAgro/7. Fish Scale.jpg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>Fish Scale</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end Abid agro product 7  --}}

{{--  Abid agro product 8  --}}
<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
	<div class="s-block up-hor">
		<div class="nn-card-set">
		<a href="https://intertradebd.com/services/subcategory/53/fish-scale">
			<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/AbidAgro/8. Fish Scale.jpg') }}" alt="service" class="img-fluid" /></div>
			<div class="p-3">
				<h6>Fish Scale</h6>
				Learn More <i class="fas fa-chevron-right fa-icon"></i>
			</div>
		</a>
		</div>
	</div>
</div>
{{-- end Abid agro product 8  --}}

			{{--  @endforeach  --}}

		</div>
	</div>


</section>

{{-- end abid agro --}}

{{-- start Kazi Fashion RMG Stock Lot --}}

<section class="dg-service2 pb120 pt0" id="services">
	<div class="container">
	<div class="row justify-content-center">
						<div class="col-lg-6">
							<div class="common-heading ptag">

								<h2>KAZI FASHION HOUSE (RMG)
                                    STOCK LOT</h2>

							</div>
						</div>
					</div>
		<div class="row upset ">

			{{--  @php
			$services = App\Models\Services::where('category_id','25')->limit(4)->get();
			@endphp  --}}

		{{--  @foreach($services as $item)  --}}

		{{--  KAZI FASHION HOUSE product 1  --}}
			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/frontend/category/25">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/KaziFashion/1. T-Shirt.jpg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6> T-Shirt</h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>
			{{-- end KAZI FASHION HOUSE product 1  --}}

			{{--  KAZI FASHION HOUSE product 2  --}}
			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/frontend/category/25">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/KaziFashion/2. T-Shirt.jpg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6>T-Shirt</h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>
			{{-- end KAZI FASHION HOUSE product 2  --}}

			{{--  KAZI FASHION HOUSE product 3  --}}
			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/frontend/category/25">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/KaziFashion/3. Ladis Dress,a.jpg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6> Ladis Dress</h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>
			{{-- end KAZI FASHION HOUSE product 3  --}}

			{{--  KAZI FASHION HOUSE product 4  --}}
			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/frontend/category/25">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/KaziFashion/3. Ladis Dress,b.jpg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6> Ladis Dress</h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>
			{{-- end KAZI FASHION HOUSE product 4  --}}

			{{--  KAZI FASHION HOUSE product 5  --}}
			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/frontend/category/25">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/KaziFashion/5.Manundeware.jpg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6>  Man's undeware </h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>
			{{-- end KAZI FASHION HOUSE product 5  --}}

			{{--  KAZI FASHION HOUSE product 6  --}}
			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/frontend/category/25">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/KaziFashion/6.ManTrouser.jpg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6> ManTrouser </h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>
			{{-- end KAZI FASHION HOUSE product 6  --}}

			{{--  KAZI FASHION HOUSE product 7  --}}
			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/frontend/category/25">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/KaziFashion/7. Ladis Jumper.jpg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6> Ladis Jumper </h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>
			{{-- end KAZI FASHION HOUSE product 7  --}}

			{{--  KAZI FASHION HOUSE product 8  --}}
			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/frontend/category/25">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/KaziFashion/8. Ladis Jumperca.jpg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6>  Ladis Jumperca </h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>
			{{-- end KAZI FASHION HOUSE product 8  --}}


			{{--  @endforeach  --}}

		</div>
	</div>


</section>

{{-- end Kazi Fashion RMG Stock Lot --}}


{{-- start Kazi Auto Cars --}}

<section class="dg-service2 pb120 pt0" id="services">
	<div class="container">
	<div class="row justify-content-center">
						<div class="col-lg-6">
							<div class="common-heading ptag">

								<h2>Kazi Auto Cars</h2>

							</div>
						</div>
					</div>
		<div class="row upset ">

			{{--  @php
			$services = App\Models\Services::where('category_id','24')->limit(4)->get();
			@endphp  --}}

		{{--  @foreach($services as $item)  --}}


		{{-- Kazi Auto Cars product 1 --}}

			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/services/subcategory/59/kazi-auto-cars">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/KaziAutoCars/Harier 2021.jpeg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6>Harier 2021</h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>

			{{-- end Kazi Auto Cars product 1  --}}

			{{-- Kazi Auto Cars product 2 --}}

			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/services/subcategory/59/kazi-auto-cars">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/KaziAutoCars/Prado 2022.jpeg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6>Prado 2022</h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>

			{{-- end Kazi Auto Cars product 2  --}}

			{{-- Kazi Auto Cars product 3 --}}

			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/services/subcategory/59/kazi-auto-cars">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/KaziAutoCars/Premio 2021.jpeg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6>Premio 2021</h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>

			{{-- end Kazi Auto Cars product 3  --}}

			{{-- Kazi Auto Cars product 4 --}}

			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/services/subcategory/59/kazi-auto-cars">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/KaziAutoCars/X-Trail 2022.jpeg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6>X-Trail 2022</h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>

			{{-- end Kazi Auto Cars product 4  --}}


			{{--  @endforeach  --}}

		</div>
	</div>


</section>

{{-- end Kazi Auto Cars --}}



{{-- startInfinite shapping --}}

<section class="dg-service2 pb120 pt0" id="services">
	<div class="container">
	<div class="row justify-content-center">
						<div class="col-lg-6">
							<div class="common-heading ptag">

								<h2>INFINITE SHIPPING & LOGISTICS</h2>

							</div>
						</div>
					</div>
		<div class="row upset ">

			{{--  @php
			$services = App\Models\Services::where('category_id','21')->limit(4)->get();
			@endphp  --}}

		{{--  @foreach($services as $item)  --}}

		{{--  INFINITE product 1  --}}
			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/frontend/category/21">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/InfiniteShipping/Container Handling.jpeg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6>Container Handling</h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>
			{{-- end INFINITE product 1  --}}

			{{--  INFINITE product 2  --}}
			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/frontend/category/21">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/InfiniteShipping/Port Operation.jpeg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6>Port Operation</h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>
			{{-- end INFINITE product 2  --}}




			{{--  INFINITE product 3  --}}
			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/frontend/category/21">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/InfiniteShipping/Trailor delivery.jpeg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6>Trailor delivery</h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>
			{{-- end INFINITE product 3  --}}

			{{--  INFINITE product 4  --}}
			<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
				<div class="s-block up-hor">
					<div class="nn-card-set">
					<a href="https://intertradebd.com/frontend/category/21">
						<div class="card-icon"><img  width="917px" height="1000px" src="{{ asset('frontend/category/InfiniteShipping/Vessel Operation.jpeg') }}" alt="service" class="img-fluid" /></div>
						<div class="p-3">
							<h6>Vessel Operation</h6>
							Learn More <i class="fas fa-chevron-right fa-icon"></i>
						</div>
					</a>
					</div>
				</div>
			</div>
			{{-- end INFINITE product 4  --}}










			{{--  @endforeach  --}}

		</div>
	</div>


</section>

{{-- end Infinite shapping --}}





































    {{--  catagory_product  --}}

    	{{-- @php
		$category = App\Models\Category::orderBy('id','desc')->get();;
		@endphp
         <section class="dg-service2 pb120 pt0" id="services">
		<div class="container">
        @foreach ($category  as $category  )
		<div class="row justify-content-center">
							<div class="col-lg-6">
								<div class="common-heading ptag">

									<h2>{{ $category->category_name }}</h2>

								</div>
							</div>
						</div>
			<div class="row upset ">

			@php
		$services = App\Models\Services::where('category_id',$category->id)->limit(4)->get();
		@endphp

			@foreach($services as $item)
				<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
					<div class="s-block up-hor pt20">
						<div class="nn-card-set">
						<a href="{{ url('services/details/'.$item->id.'/'.$item->content_title ) }}">
							<div class="card-icon"><img src="{{ asset($item->thamble) }}" alt="service" class="img-fluid" /></div>
							<h6>{{ $item->content_title}}</h6>

							Learn More <i class="fas fa-chevron-right fa-icon"></i></a>
						</div>
					</div>
				</div>
				@endforeach

			</div>
            @endforeach
		</div>
		<div class="row">
        <div class="col-lg-12 maga-btn mt60">
          <a href="{{route('all-services')}}" class="btn-outline">View More Services<i class="fas fa-chevron-right fa-icon"></i></a>
        </div>
      </div>
	</section> --}}


   {{-- end catagory_product  --}}

    {{-- @php
		$category = App\Models\category::orderBy('id','desc')->get();;
		@endphp
 <section class="dg-service2 pb120 pt0" id="services">
		<div class="container">
        @foreach ($category  as $category  )
		<div class="row justify-content-center">
							<div class="col-lg-6">
								<div class="common-heading ptag">

									<h2>{{ $category->category_name }}</h2>

								</div>
							</div>
						</div>
			<div class="row upset ">

			@php
		$services = App\Models\Services::where('category_id',$category->id)->limit(4)->get();
		@endphp

			@foreach($services as $item)

				<div class="col-lg-3 col-sm-6 mt30 wow fadeInUp" data-wow-delay=".6s">
					<div class="s-block up-hor">
						<div class="nn-card-set">
						<a href="{{ url('services/details/'.$item->id.'/'.$item->content_title ) }}">
							<div class="card-icon"><img src="{{ asset($item->thamble) }}" alt="service" class="img-fluid" /></div>
							<div class="p-3">
                                <h6>{{ $item->content_title}}</h6>
							    Learn More <i class="fas fa-chevron-right fa-icon"></i>
                            </div>
                        </a>
						</div>
					</div>
				</div>
				@endforeach

			</div>

		</div>
		<div class="row">
        <div class="col-lg-12 maga-btn mt60 mb60">
          <a href="{{route('all-services')}}" class="btn-outline">View More Services<i class="fas fa-chevron-right fa-icon"></i></a>
        </div>
      </div>
      @endforeach
	</section> --}}




    {{-- end catagory_product  --}}

	<!--Start gallery -->
{{--  <section class="dg-portfolio-section pb120 pt120">
<div class="container">
<div class="row justify-content-center ">
<div class="col-lg-8">
<div class="common-heading-2">

	<h2 class="mb0">Our Latest Creative Work</h2>
</div>
</div>
</div>
<div class="row">

@php
$gallery = App\Models\Gallery::orderBy('id','desc')->limit(12)->get();
@endphp


@foreach($gallery as $item)
<div class="col-lg-3 col-sm-6 single-card-item wow fadeInUp" data-wow-delay=".2s">
<div class="isotope_item h-scl-">
	<div class="item-image h-scl-base zoom">
		<a href="#"><img src="{{ asset($item->gallery) }}" alt="portfolio" class="img-fluid "/> </a>
	</div>

</div>
</div>
@endforeach





</div>
</div>
<div class="row">
        <div class="col-lg-12 maga-btn mt60">
          <a href="{{ route('all-creative')}}" class="btn-outline">View More Photos<i class="fas fa-chevron-right fa-icon"></i></a>
        </div>
      </div>
</section>  --}}
<!--End gallery-->
	<!--why choose-->
		{{--  <section class="why-choos-lg pad-tb deep-dark">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="common-heading text-l">
							<span style="color:black"><strong>Why Choose Us</strong></span>
							<h2 class="mb20">Why The Technoval <span class="text-second text-bold">Ranked Top</span> Among The Leading IT Companies</h2>

							<div class="itm-media-object mt40 tilt-3d">
								<div class="media">
									<div class="img-ab- base" data-tilt data-tilt-max="20" data-tilt-speed="1000"><img src="{{ asset('frontend/assets/images/icons/delivered.png')}}" alt="icon" class="layer"></div>
									<div class="media-body">
										<h4>We Ensure Right time delivery </h4>

									</div>
								</div>
								<div class="media mt40">
									<div class="img-ab- base" data-tilt data-tilt-max="20" data-tilt-speed="1000"><img src="{{ asset('frontend/assets/images/icons/rating.png')}}" alt="icon" class="layer"></div>
									<div class="media-body">
										<h4>Expart team members</h4>

									</div>
								</div>
								<div class="media mt40">
									<div class="img-ab- base" data-tilt data-tilt-max="20" data-tilt-speed="1000"> <img src="{{ asset('frontend/assets/images/icons/insurance.png')}}" alt="icon" class="layer"></div>
									<div class="media-body">
										<h4>We care your product & time</h4>

									</div>
								</div>
								<div class="media mt40">
									<div class="img-ab- base" data-tilt data-tilt-max="20" data-tilt-speed="1000"> <img src="{{ asset('frontend/assets/images/icons/recruitment.png')}}" alt="icon" class="layer"></div>
									<div class="media-body">
										<h4>We research for latest technology</h4>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div  data-tilt data-tilt-max="5" data-tilt-speed="1000" class="single-image  wow fadeIn" data-wow-duration="2s"><img src="{{ asset('frontend/assets/images/about/choose-us.png')}}" alt="image" class="img-fluid"></div>
						<!--p class="text-center mt30">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p-->

					</div>
				</div>
			</div>
		</section>  --}}
		<!--End why choose-->

		<!--About Us-->

	{{--  <section class="about-dg-busign pb120 pt120 bg-light-ylo upset" id="about">
	<div class="up-curvs"><svg height="100" width="100%" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
viewBox="0 0 1920 89.3" style="enable-background:new 0 0 1920 89.3;" xml:space="preserve" fill="#e9f5ff">
<path d="M1919.5,89.5H-0.5c0,0,0-90,0-90c114.9,4.8,228.6,17.9,343.6,24.6c118.6,7,237.4,11.9,356.1,14.7
c237.6,5.7,475.3,3.1,712.7-7.7c164.2-7.5,328.1-23.7,492.3-31c0.7,0,15.2-0.5,15.2-0.6C1919.5-0.5,1919.5,89.5,1919.5,89.5z"/>
</svg>
</div>
<div class="container">
<div class="row">
<div class="col-lg-6 v-center">
<div class="common-heading-2 text-l">
<span class="text-effect-1"><strong><h4>About Us</h4></strong></span>  --}}
{{--  <h2 class="mb20">Work Together For Success</h2>  --}}
{{--  <p>
    Inter Trade is a trading company operating from Chattogram, Bangladesh. We have established on 2017 for longer and closer working relationships with our clients and suppliers not only provide immediate and reliable services but also to continually exceed expectations and goals.
    We create commercial flows, import and export products, arranging and managing international projects with our partners. Supported our network, we are able to integrate all these functions with our fruitful experience. Our numerous competencies allow us to respond to the needs of industries looking for a new market. We look forward to welcoming you to our company and work to develop and enhance your current business in Bangladesh.
</p>
</div>

<div class="common-heading-2 text-l">
<span class="text-effect-1"></span>
<h2 class="mb20">Our Mission:</h2>
<p>
    •	Striving to meet the increasing and diversified demands of the customers.<br>
    •	Being market leader in defend market segments.<br>
    •	Providing quality products & reliable services and sourcing from reputed manufacturers.<br>
    •	Becoming professional marketing partner for our principals to meet the objectives of sales, market information, and   customer service.<br>
    •	Being the preferred supplier of our customers, with our products exceeding their quality requirements.<br>
    •	Giving timely information to the customers regarding trends of the market dynamics.<br>
    •	Harnessing the creative energies of all our staffs through team work, develop and a transparent work environment.<br>

</p>
</div>

<div class="common-heading-2 text-l">
    <span class="text-effect-1"></span>
    <h2 class="mb20">Our Focus: </h2>
    <p>
        •	Inter Trade focuses to foster growth and promote enduring business ties with its client. Customer responsiveness and commitment is the driving force in the quest for excellence.<br>
        •	An effective supply chain manager - Right from sourcing supply of material at the doorstep of the customer in Organic and Natural Cosmetics, Organic Items, and Health Care Items.<br>


    </p>
    </div>

    <div class="common-heading-2 text-l">
        <span class="text-effect-1"></span>
        <h2 class="mb20">Our Lines of Business: </h2>
        <p>
            •	Inter Trade is exporting Industrial Dust, Zinc Ash, Compound of Zinc Ash, EAF Dust, IF Dust, Mill Scale, Steel Scrap, Agro Products, Fish, Dried Fish Scale, Vegetables, Food Stuff, Garments Items, Jute products and Tea from Bangladesh. Our main buyers are from China, Korea, Indonesia, Malaysia, Thailand, UAE, Turkey etc.<br>
            •	Inter Trade is importing Recondition Car from Japan, Chocolate from Turkey, Electronic Items from China, Perfume and Ladies Ornaments from UAE, Steel Scraps from USA and UK, Ladies wallet from Thailand & China Etc.
            We have also a reliable shipping line (INFINITE SHIPPING & LOGISTICS) with a very experienced logistics team.


        </p>
        </div>  --}}



{{--  </div>
<div class="col-lg-6 v-center">
<img src="{{ asset('frontend/assets/images/about/about-us.png')}}" alt="img" class="img-fluid">
</div>


</div>
</div>
<div class="bottom-curvs">
<svg height="100" width="100%" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
viewBox="0 0 1920 89.3" style="enable-background:new 0 0 1920 89.3;" xml:space="preserve" fill="#e9f5ff" >
<path d="M1919.5-0.5H-0.5c0,0,0,90,0,90c114.9-4.8,228.6-17.9,343.6-24.6c118.6-7,237.4-11.9,356.1-14.7
c237.6-5.7,475.3-3.1,712.7,7.7c164.2,7.5,328.1,23.7,492.3,31c0.7,0,15.2,0.5,15.2,0.6C1919.5,89.5,1919.5-0.5,1919.5-0.5z"/>
</svg>
</div>
</section>  --}}

<!--end About Us-->


<!--Start Portfolio-->
		{{--  <section class="portfolio-section pad-tb" id="work">
			<div class="container">
				<div class="row justify-content-center ">
					<div class="col-lg-8">
						<div class="common-heading">

							<h2 class="mb20">Our Portfolio</h2>
						</div>
					</div>
				</div>
				<div class="row">

@php
$portfolios = App\Models\Portfolio::orderBy('id','desc')->get();
@endphp

		@foreach($portfolios as $item)
					<div class="col-lg-3 col-sm-6 col mt40 wow fadeIn" data-wow-delay="0.2s">
						<div class="isotope_item up-hor">
							<div class="item-image">
								<a href="#"><img src="{{ asset($item->port_image)}}" alt="image" class="img-fluid" /> </a>
							</div>
							<div class="item-info-div shdo">
								<h6>{{ $item->port_title}}</h4>
								<p>{{ $item->port_subtitle}}</p>
							</div>
						</div>
					</div>
		@endforeach




				</div>
			</div>
		</section>  --}}
		<!--End Portfolio-->



		<!--Start work-category-->
		{{--  <section class="work-category pad-tb">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-8">
						<div class="common-heading ptag">
							<span>We Have Worked Across Multiple Industries</span>
							<h2>Industries We Serve</h2>

						</div>
					</div>
				</div>
				<div class="row mt30">
					<div class="col-lg-3 col-sm-6 col-6 wow fadeIn" data-wow-delay="0.1s"> <div class="industry-workfor hoshd"><img src="{{ asset('frontend/assets/images/icons/house.svg')}}" alt="img"> <h6>Real estate</h6> </div></div>
					<div class="col-lg-3 col-sm-6 col-6 wow fadeIn" data-wow-delay="0.3s"> <div class="industry-workfor hoshd"><img src="{{ asset('frontend/assets/images/icons/travel-case.svg')}}" alt="img"> <h6>Tour &amp; Travels</h6> </div></div>
					<div class="col-lg-3 col-sm-6 col-6 wow fadeIn" data-wow-delay="0.5s"> <div class="industry-workfor hoshd"><img src="{{ asset('frontend/assets/images/icons/video-tutorials.svg')}}" alt="img"> <h6>Education</h6> </div></div>
					<div class="col-lg-3 col-sm-6 col-6 wow fadeIn" data-wow-delay="0.7s"> <div class="industry-workfor hoshd"><img src="{{ asset('frontend/assets/images/icons/taxi.svg')}}" alt="img"> <h6>Transport</h6> </div></div>
					<div class="col-lg-3 col-sm-6 col-6 wow fadeIn" data-wow-delay="0.9s"> <div class="industry-workfor hoshd"><img src="{{ asset('frontend/assets/images/icons/event.svg')}}" alt="img"> <h6>Event</h6> </div></div>
					<div class="col-lg-3 col-sm-6 col-6 wow fadeIn" data-wow-delay="1.1s"> <div class="industry-workfor hoshd"><img src="{{ asset('frontend/assets/images/icons/smartphone.svg')}}" alt="img"> <h6>eCommerce</h6> </div></div>
					<div class="col-lg-3 col-sm-6 col-6 wow fadeIn" data-wow-delay="1.3s"> <div class="industry-workfor hoshd"><img src="{{ asset('frontend/assets/images/icons/joystick.svg')}}" alt="img"> <h6>Game</h6> </div></div>
					<div class="col-lg-3 col-sm-6 col-6 wow fadeIn" data-wow-delay="1.5s"> <div class="industry-workfor hoshd"><img src="{{ asset('frontend/assets/images/icons/healthcare.svg')}}" alt="img"> <h6>Healthcare</h6> </div></div>
					<div class="col-lg-3 col-sm-6 col-6 wow fadeIn" data-wow-delay="1.7s"> <div class="industry-workfor hoshd"><img src="{{ asset('frontend/assets/images/icons/money-growth.svg')}}" alt="img"> <h6>Finance</h6> </div></div>
					<div class="col-lg-3 col-sm-6 col-6 wow fadeIn" data-wow-delay="1.9s"> <div class="industry-workfor hoshd"><img src="{{ asset('frontend/assets/images/icons/baker.svg')}}" alt="img"> <h6>Restaurant</h6> </div></div>
					<div class="col-lg-3 col-sm-6 col-6 wow fadeIn" data-wow-delay="2.1s"> <div class="industry-workfor hoshd"><img src="{{ asset('frontend/assets/images/icons/mobile-app.svg')}}" alt="img"> <h6>On-Demand</h6> </div></div>
					<div class="col-lg-3 col-sm-6 col-6 wow fadeIn" data-wow-delay="2.3s"> <div class="industry-workfor hoshd"><img src="{{ asset('frontend/assets/images/icons/groceries.svg')}}" alt="img"> <h6>Grocery</h6> </div></div></div>
				</div>
			</section>  --}}

			<!--End  work-category-->

			  <!--Start Blog Grid-->
  <section class="blog-page pad-tb pt40">
    <div class="container">
      <div class="row">
	  <div class="row justify-content-center">
					<div class="col-lg-8">
						<div class="common-heading ptag">

							<h2>Our latest News</h2>

						</div>
					</div>
				</div>
	  @php
$blogs = App\Models\Blog::orderBy('id','desc')->limit(4)->get();
@endphp

	  @foreach($blogs as $item)
        <div class="col-lg-3 col-sm-6 single-card-item">
          <div class="isotope_item hover-scale">
            <div class="item-image">
              <a href="{{ route('view-blog',$item->id) }}"><img src="{{ asset($item->blog_photo)}}" alt="blog" class="img-fluid"/> </a>

            </div>
            <div class="item-info blog-info">
              <div class="entry-blog">

                <span class="posted-on">
                <a href="#"><i class="fas fa-clock"></i>{{ Carbon\Carbon::parse($item->created_at)->diffForHumans()}}</a>
                </span>
                <span><a href="#"><i class="far fa-eye"></i>{{ $item->views}}</a></span>
              </div>
              <h4><a href="{{ route('view-blog',$item->id) }}">{{ $item->blog_title}}</a></h4>
              <p>{!! Str::limit($item->blog_description, 50)  !!}</p>
            </div>
          </div>
        </div>

		@endforeach




      </div>
    </div>
	<div class="row">
        <div class="col-lg-12 maga-btn mt60">
          <a href="{{route('all-blog')}}" class="btn-outline">View More News<i class="fas fa-chevron-right fa-icon"></i></a>
        </div>
      </div>
  </section>
  <!--End Blog Grid-->
</body>

            @endsection
