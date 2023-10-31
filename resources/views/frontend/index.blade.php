@extends('frontend.front_master')
@section('content')
@section('title')
car
@endsection
@php
$setting = App\Models\setting::find(1);
@endphp

<div class="onloadpage" id="page_loader">
    <div class="pre-content">
    <div class="logo-pre"> <img src="{{ asset($setting->logo) }}" alt="Logo" class="mega-darks-logo" /></div>
    </div>
    </div>
    <section class="hero-section niwax-lp1" data-background="{{ asset('frontend/assets/images/banner/niwax-lpbg.jpg') }}" id="home">
    <div class="text-block">
    <div class="container">
    <div class="row v-center justify-content-between">
    <div class="col-lg-6">
    <div class="header-headings">
    <span class="text-effect-1">Solution-Oriented Services</span>
    <h1 class="wow fadeIn mt20 mb30 cd-headline clip" data-wow-delay=".4s">Creative service Company We Create
    <span class="cd-words-wrapper"> <b class="is-visible">car</b> </span> </h1>
    <p class="wow fadeIn" data-wow-delay=".8s">Disney Pixar Cars Storybook Collection: Storybook Collection (Treasury) Hardcover – 1 January 2015</p>

    <div class="niwaxbtnvideo mt30">
    <div class="video-btn  d-flex v-center gap10">
    <div class="video-intro-ppx"><a class="video-link play-video" href="https://www.youtube.com/watch?v=SZEflIVnhH8?autoplay=1&rel=0"><span class="triangle-play"></span></a></div>
    <div class="title-hero">
    <p>Play Video</p>
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="col-lg-5 v-center">
    <div class="form-block formcover shadow">
    <h4>Request a Free Quote</h4>

    <form id="contactForm" data-bs-toggle="validator" action="{{ route('contact-form') }}" method="POST" class="shake mt30">
        @csrf
    <div class="row">
    <div class="form-group col-sm-6">
    <input type="text" id="name" placeholder="Enter name" name="full_name" required data-error="Please fill Out">
    <div class="help-block with-errors"></div>
    </div>
    <div class="form-group col-sm-6">
    <input type="email" id="email" name="email_address" placeholder="Enter email" required>
    <div class="help-block with-errors"></div>
    </div>
    </div>
    <div class="row">
    <div class="form-group col-sm-6">
    <input type="text" id="mobile" name="mobile" placeholder="Enter mobile" required data-error="Please fill Out">
    <div class="help-block with-errors"></div>
    </div>
    @php
    $service_name = App\Models\Services::all();
    @endphp
    <div class="form-group col-sm-6">
        <select name="subject" id="Dtype" required>
        <option value>Select service</option>
        @foreach ($service_name as $name)
        <option value="{{ $name->content_title }}">{{ $name->content_title }}</option>
        @endforeach
        </select>
        <div class="help-block with-errors"></div>
    </div>

    <div class="form-group">
    <textarea id="message" rows="5" name="message" placeholder="Enter your message" required></textarea>
    <div class="help-block with-errors"></div>
    </div>
    <button type="submit" id="form-submit" class="btn btn-main bg-btn3">Submit</button>
    <div id="msgSubmit" class="h3 text-center hidden"></div>
    <div class="clearfix"></div>
    </form>


    </div>
    </div>
    </div>
    </div>
    </div>
    </section>


    <section class="dg-service2 pad-tb" id="services">
    <div class="container">
    <div class="row justify-content-center">
    <div class="col-lg-8">
    <div class="common-heading text-center">
    <span class="text-effect-2">Our Best service</span>
    <h2 class="mb30"> car model </h2>
    </div>
    </div>
    </div>

    <div class="fieldsets row">
        @if(session('loginError'))
        <div class="alert alert-danger">
            <strong> {{(session('loginError')) }}</strong>
        </div>
    @endif
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
            <h4><a href="{{ route('details-service-page',$product->id) }}">{{ $product->content_title  }}</a></h4>
            </div>
            
            <div class="priceoderbtn"><a href="{{ route('checkOut-index',$product->id) }}" class="niwax-btn3" style="padding: 0 16px !important; line-height: 33px !important;">Order Now</a></div>
            </div>
            </div>
        @endforeach

    </div>
    </div>
    </section>

    <section class="why-choos-lg pad-tb deep-dark">
    <div class="container">
    <div class="row">
    <div class="col-lg-6">
    <div class="common-heading text-l">
    <span>Who We Are</span>
    <h2 class="mb20">Since 2000, We've Been the Most Dependable Web Design Company.</h2>
    <p>We have produced IT solutions at a worldwide level by using the full potential of the latest disruptive technologies as one of the leading IT consulting companies in India. We have produced IT solutions at a worldwide level by using the full potential of the latest disruptive technologies as one of the leading IT consulting companies in India.</p>
    <p>We have produced IT solutions at a worldwide level by using the full potential of the latest disruptive technologies as one of the leading IT consulting companies in India.</p>
    </div>
    </div>
    <div class="col-lg-6">
    <div class="img-design h-scl-">
    <div class="imgac "> <img src="{{ asset('frontend/assets/images/hero/creative-ag2a.jpg') }}" alt="creative agnecy html template" class="ag-dg1 img-fluid h-scl-base"></div>
    <div class="imgac h-scl-base"><img src="{{ asset('frontend/assets/images/hero/creative-ag2b.jpg') }}" alt="creative agnecy html template" class="ag-dg2 img-fluid "></div>
    <div class="shpdez1 shpdzz"></div>
    <div class="shpdez2 shpdzz"></div>
    <div class="shpdez3 shpdzz"></div>
    <div class="shpdez4 shpdzz"></div>
    </div>
    </div>
    <div class="col-lg-6 mt30">
    <div class="itm-media-object mt40 tilt-3d">
    <div class="media">
    <div class="img-ab- base" data-tilt data-tilt-max="20" data-tilt-speed="1000"><img src="{{ asset('frontend/assets/images/icons/computers.svg') }}" alt="icon" class="layer"></div>
    <div class="media-body">
    <h4>Streamlined Project Management</h4>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc aliquet ligula nec leo elementum semper. Mauris aliquet egestas metus.</p>
    </div>
    </div>
    <div class="media mt40">
    <div class="img-ab- base" data-tilt data-tilt-max="20" data-tilt-speed="1000"><img src="{{ asset('frontend/assets/images/icons/worker.svg') }}" alt="icon" class="layer"></div>
    <div class="media-body">
    <h4>A Dedicated Team of Experts</h4>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc aliquet ligula nec leo elementum semper. Mauris aliquet egestas metus.</p>
    </div>
    </div>
    </div>
    </div>
    <div class="col-lg-6 mt30">
    <div class="itm-media-object mt40 tilt-3d">
    <div class="media">
    <div class="img-ab- base" data-tilt data-tilt-max="20" data-tilt-speed="1000"><img src="{{ asset('frontend/assets/images/icons/computers.svg') }}" alt="icon" class="layer"></div>
    <div class="media-body">
    <h4>Streamlined Project Management</h4>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc aliquet ligula nec leo elementum semper. Mauris aliquet egestas metus.</p>
    </div>
    </div>
    <div class="media mt40">
    <div class="img-ab- base" data-tilt data-tilt-max="20" data-tilt-speed="1000"><img src="{{ asset('frontend/assets/images/icons/worker.svg') }}" alt="icon" class="layer"></div>
    <div class="media-body">
    <h4>A Dedicated Team of Experts</h4>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc aliquet ligula nec leo elementum semper. Mauris aliquet egestas metus.</p>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </section>
    @php
    $Industries = App\Models\Industries::all();
    @endphp

    <div class="niwax-company-awards-cover">
        <div class="container">
        <div class="row v-center">
        <div class="companytime col-lg-3">
        <p>2 Yesrs* <span>Industry Experience</span></p>
        </div>
        <div class="companyawards col-lg-9">
        <div class="niwax-logo-awards niwax-logo-slider owl-carousel">
         @foreach ($Industries as $Industrie)
        <div class="industry-workfors">
        <img src="{{ asset($Industrie->ind_photo ) }}" alt="img">
        <h6>{{ $Industrie->ind_title}}</h6>
        </div>
        @endforeach

        </div>
        </div>
        </div>
        </div>
        </div>

        @php
            $portfolios = App\Models\Portfolio::all();
        @endphp

    <section class="portfolio-page dark-bg4 bg-gradient6 pad-tb" id="work">
    <div class="container">

    <div class="row justify-content-left">
    <div class="col-lg-6">
    <div class="common-heading pp">
    <span class="text-center" style="
    margin-left: 472px;">Our Work</span>
    <h2 class="text-center" style="
    margin-left: 472px;">Portfolio</h2>
    </div>
    </div>
    </div>
    <div class="row card-list justify-content-center">
        @foreach ($portfolios  as $portfolio)


    <div class="col-lg-4 col-md-6 grid-sizer"></div>

    <div class="col-lg-4 col-sm-6 single-card-item app">
    <div class="isotope_item hover-scale">
    <div class="item-image">
    <a href="#"><img src="{{ asset( $portfolio->port_image ) }}" alt="portfolio" class="img-fluid" /> </a>
    </div>
    <div class="item-info">
    <h4><a href="#">{{ $portfolio->port_title  }}</a></h4>
    <p>{{ $portfolio->port_subtitle }}</p>
    </div>
    </div>
    </div>


@endforeach

    </div>
    </div>
    </section>

    <section class="bg-gradient1 dark-bg4 pad-tb">
    <div class="container">
    <div class="row justify-content-center">
    <div class="col-lg-8">
    <div class="common-heading ptag">
    <span>Reviews</span>
    <h2>Client Testimonials</h2>
    <p class="mb30">Check our customers success stories.</p>
    </div>
    </div>
    </div>
    <div class="row">
    <div class="col-md-12 mt30">
    <div class="niwax-review-slider owl-carousel center-dots">
    <div class="reviews-card pr-shadow">
    <div class="row v-center">
    <div class="col"> <span class="revbx-lr"><i class="fas fa-quote-left"></i></span> </div>
    <div class="col"> <span class="revbx-rl"><img src="{{ asset('frontend/assets/images/client/upwork-logo.png') }}" alt="review service logo"></span> </div>
    </div>
    <div class="review-text">
    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
    </div>
    <div class="-client-details-">
    <div class="-reviewr">
    <img src="{{ asset('frontend/assets/images/client/reviewer-a.jpg') }}" alt="Good Review" class="img-fluid">
    </div>
    <div class="reviewer-text">
    <h4>Mario Speedwagon</h4>
    <p>Business Owner, <small>Jaipur</small></p>
    <div class="star-rate">
    <ul>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    </ul>
    </div>
    </div>
    </div>
    </div>
    <div class="reviews-card pr-shadow">
    <div class="row v-center">
    <div class="col"> <span class="revbx-lr"><i class="fas fa-quote-left"></i></span> </div>
    <div class="col"> <span class="revbx-rl"><img src="{{ asset('frontend/assets/images/client/upwork-logo.png') }}" alt="review service logo"></span> </div>
    </div>
    <div class="review-text">
    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
    </div>
    <div class="-client-details-">
    <div class="-reviewr">
    <img src="images/client/reviewer-a.jpg" alt="Good Review" class="img-fluid">
    </div>
    <div class="reviewer-text">
    <h4>Mario Speedwagon</h4>
    <p>Business Owner, <small>Jaipur</small></p>
    <div class="star-rate">
    <ul>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    </ul>
    </div>
    </div>
    </div>
    </div>
    <div class="reviews-card pr-shadow">
    <div class="row v-center">
    <div class="col"> <span class="revbx-lr"><i class="fas fa-quote-left"></i></span> </div>
    <div class="col"> <span class="revbx-rl"><img src="{{ asset('frontend/assets/images/client/upwork-logo.png') }}" alt="review service logo"></span> </div>
    </div>
    <div class="review-text">
    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
    </div>
    <div class="-client-details-">
    <div class="-reviewr">
    <img src="{{ asset('frontend/assets/images/client/reviewer-a.jpg') }}" alt="Good Review" class="img-fluid">
    </div>
    <div class="reviewer-text">
    <h4>Mario Speedwagon</h4>
    <p>Business Owner, <small>Jaipur</small></p>
    <div class="star-rate">
    <ul>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    </ul>
    </div>
    </div>
    </div>
    </div>
    <div class="reviews-card pr-shadow">
    <div class="row v-center">
    <div class="col"> <span class="revbx-lr"><i class="fas fa-quote-left"></i></span> </div>
    <div class="col"> <span class="revbx-rl"><img src="{{ asset('frontend/assets/images/client/upwork-logo.png') }}" alt="review service logo"></span> </div>
    </div>
    <div class="review-text">
    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
    </div>
    <div class="-client-details-">
    <div class="-reviewr">
    <img src="{{ asset('frontend/assets/images/client/reviewer-a.jpg') }}" alt="Good Review" class="img-fluid">
    </div>
    <div class="reviewer-text">
    <h4>Mario Speedwagon</h4>
    <p>Business Owner, <small>Jaipur</small></p>
    <div class="star-rate">
    <ul>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)" class="chked"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    <li> <a href="javascript:void(0)"><i class="fas fa-star" aria-hidden="true"></i></a> </li>
    </ul>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </section>
    <section class="service-block pad-tb bg-gradient3">
    <div class="container">
    <div class="row justify-content-center">
    <div class="col-lg-8">
    <div class="common-heading ptag">
    <span>We Deliver Our Best</span>
    <h2>Why Choose Niwax</h2>
    <p class="mb30">Donec metus lorem, vulputate at sapien sit amet, auctor iaculis lorem. In vel hendrerit nisi. Vestibulum eget risus velit.</p>
    </div>
    </div>
    </div>
    <div class="row justify-content-center">
    <div class="col-lg-4 col-sm-6 mt30  wow fadeIn" data-wow-delay=".2s">
    <div class="s-block wide-sblock">
    <div class="s-card-icon"><img src="{{ asset('frontend/assets/images/icons/teama.svg') }}" alt="service" class="img-fluid"></div>
    <div class="s-block-content">
    <h4>Reliable Service. In House Team</h4>
    <p>In vel hendrerit nisi. Vestibulum eget risus velit.</p>
    </div>
    </div>
    </div>
    <div class="col-lg-4 col-sm-6 mt30 wow fadeIn" data-wow-delay=".5s">
    <div class="s-block wide-sblock">
    <div class="s-card-icon"><img src="{{ asset('frontend/assets/images/icons/link.svg') }}" alt="service" class="img-fluid"></div>
    <div class="s-block-content">
    <h4>Trusted by People Like You</h4>
    <p>In vel hendrerit nisi. Vestibulum eget risus velit.</p>
    </div>
    </div>
    </div>
    <div class="col-lg-4 col-sm-6 mt30 wow fadeIn" data-wow-delay=".8s">
    <div class="s-block wide-sblock">
    <div class="s-card-icon"><img src="{{ asset('frontend/assets/images/icons/tech.svg') }}" alt="service" class="img-fluid"></div>
    <div class="s-block-content">
    <h4>Complete Technical Competency</h4>
    <p>In vel hendrerit nisi. Vestibulum eget risus velit.</p>
    </div>
    </div>
    </div>
    <div class="col-lg-4 col-sm-6 mt30 wow fadeIn" data-wow-delay="1.1s">
    <div class="s-block wide-sblock">
    <div class="s-card-icon"><img src="{{ asset('frontend/assets/images/icons/hi.svg') }}" alt="service" class="img-fluid"></div>
    <div class="s-block-content">
    <h4>Friendly & Cordial in Nature</h4>
    <p>In vel hendrerit nisi. Vestibulum eget risus velit.</p>
    </div>
    </div>
    </div>
    <div class="col-lg-4 col-sm-6 mt30 wow fadeIn" data-wow-delay="1.4s">
    <div class="s-block wide-sblock">
    <div class="s-card-icon"><img src="{{ asset('frontend/assets/images/icons/badge.svg') }}" alt="service" class="img-fluid"></div>
    <div class="s-block-content">
    <h4>Excellent Quality Delivered on Time</h4>
    <p>In vel hendrerit nisi. Vestibulum eget risus velit.</p>
    </div>
    </div>
    </div>
    <div class="col-lg-4 col-sm-6 mt30 wow fadeIn" data-wow-delay="1.7s">
    <div class="s-block wide-sblock">
    <div class="s-card-icon"><img src="{{ asset('frontend/assets/images/icons/tin.svg') }}" alt="service" class="img-fluid"></div>
    <div class="s-block-content">
    <h4>Effective & Continuous Communication</h4>
    <p>In vel hendrerit nisi. Vestibulum eget risus velit.</p>
    </div>
    </div>
    </div>
    </div>

    </div>
    </section>
    @php
    $clients = App\Models\client::all();
    @endphp
    <div class="clientslider">
    <div class="container">
    <div class="row">
    <div class="col-md-12">
    <div class="niwax-client-slider owl-carousel">
    @foreach ($clients as $client)
    <div class="awardlogo"> <img src="{{ asset($client->client_logo ) }}" alt="icon"></div>
    @endforeach
    </div>
    </div>
    </div>
    </div>
    </div>



</section>

</body>

@endsection
