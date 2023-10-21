<!DOCTYPE html>
<html lang="en" class="no-js">
<head>


    <link href="{{ asset('frontend/assets/images/favicon.png') }}" rel="icon">

	<meta charset="utf-8"/>
	<title>@yield('title') </title>
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="theme-color" content="#fff">
	<!--website-favicon-->
	{{-- <link href="frontend/assets/images/favicon.png" rel="icon"> --}}
	<!--plugin-css-->
	<link href="{{ asset('frontend/assets/css/bootstrap.min.css')}}" rel="stylesheet">
	<link href="{{ asset('frontend/assets/css/plugin.min.css')}}" rel="stylesheet">
	<link href="{{ asset('frontend/assets/css/swiper.min.css')}}" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	<!-- template-style-->
	<link href="{{ asset('frontend/assets/css/style.css')}}" rel="stylesheet">
	<link href="{{ asset('frontend/assets/css/responsive.css')}}" rel="stylesheet">
	<link href="{{ asset('frontend/assets/css/darkmode.css')}}" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

    <style>html { scroll-behavior: smooth;}</style>

 </head>
 <body>



@include('frontend.body.header')

	  <!--Start Hero Slider-->

@yield('content')



@include('frontend.body.footer')
<!--End Footer-->

<!-- particles js files -->

    <script src="{{ asset('frontend/assets/js/particles.js')}}"></script>
    <script src="{{ asset('frontend/assets/js/app.js')}}"></script>

<!-- js placed at the end of the document so the pages load faster -->
<script src="{{ asset('frontend/assets/js/vendor/modernizr-3.5.0.min.js')}}"></script>
<script src="{{ asset('frontend/assets/js/jquery.min.js')}}"></script>
<script src="{{ asset('frontend/assets/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{ asset('frontend/assets/js/plugin.min.js')}}"></script>
  <script src="{{ asset('frontend/assets/js/swiper.min.js')}}"></script>
<script src="{{ asset('frontend/assets/js/preloader.js')}}"></script>
<script src="{{ asset('frontend/assets/js/tweenmax.min.js')}}"></script>
<!--common script file-->
<script src="{{ asset('frontend/assets/js/main.js')}}"></script>

@yield('footer_script')

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="js/vendor/modernizr-3.5.0.min.js"></script>
<script src="{{ asset('frontend/assets/js/jquery.min.js') }}"></script>
<script async src="{{ asset('frontend/assets/') }}js/typer.js"></script>
<script src="{{ asset('frontend/assets/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ asset('frontend/assets/js/plugin.min.js') }}"></script>
<script src="{{ asset('frontend/assets/js/preloader.js') }}"></script>

<script src="{{ asset('frontend/assets/js/main.js') }}"></script>
<script>
      //Owl-Carousel - client logo
      var owl = $('.niwax-client-slider');
      owl.owlCarousel({
      loop: true,
      center:false,
      autoplay: true,
      margin: 20,
      nav: false,
      dots: false,
      autoplayTimeout: 3500,
      autoplayHoverPause: true,
      smartSpeed: 2000,
      responsive: {
              0: {
                  items: 3,
              },
              520: {
                  items: 3
              },
              768: {
                  items: 4
              },
              1200: {
                  items: 4
              },
              1400: {
                  items: 5
              },
              1600: {
                  items: 6
              },
          }
      });
      //Owl-Carousel - awards card
      var owl = $('.niwax-logo-slider');
      owl.owlCarousel({
      loop: true,
      center:false,
      autoplay: true,
      margin: 20,
      nav: false,
      dots: false,
      autoplayTimeout: 3500,
      autoplayHoverPause: true,
      smartSpeed: 2000,
      responsive: {
              0: {
                  items: 3,
              },
              520: {
                  items: 3
              },
              768: {
                  items: 4
              },
              1200: {
                  items: 4
              },
              1400: {
                  items: 5
              },
              1600: {
                  items: 6
              },
          }
      });

      //Owl-Carousel - awards card
      var owl = $('.niwax-review-slider');
      owl.owlCarousel({
          items: 3,
          loop: true,
      center:false,
          autoplay: true,
          margin: 20,
          nav: false,
          dots: true,
          autoplayTimeout: 3500,
          autoplayHoverPause: true,
          smartSpeed: 2000,
          responsive: {
              0: {
                  items: 1,
              },
              520: {
                  items: 1
              },
              768: {
                  items: 2
              },
              1200: {
                  items: 2
              },
              1400: {
                  items: 3
              },
              1600: {
                  items: 3
              },
          }
      });
    </script>





</body>
</html>
