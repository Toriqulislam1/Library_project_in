@extends('frontend.front_master')
@section('content')
@section('title')
car
@endsection




<section class="contact-page pad-tb bg-gradient3">
    <div class="container ">
      <div class="row justify-content-between ">
        <div class="col-lg-8 m-auto ">
          <div class="niwax23form shadow">
            <div class="common-heading text-l">
              <h2 class="mt0 mb0 text-center mb-5">Sign up</h2>
            </div>

            @if(session('success'))
                    <div class="alert alert-success">
                        <strong> {{(session('success')) }}</strong>
                    </div>
            @endif
            @if(session('error_pass'))
                    <div class="alert alert-danger">
                        <strong> {{(session('error_pass')) }}</strong>
                    </div>
            @endif

            <div class="contact-form-card-pr contact-block-sw m0 iconin">
              <div class="form-block niwaxform">

                <form action="{{ route('register-store') }}" id="contactform" method="post" novalidate="novalidate">
                    @csrf
                  <div class="fieldsets row">
                    <div class="col-md-6 form-group floating-label">


                      <div class="formicon"><i class="fas fa-user"></i></div>

                      <input type="text" placeholder=" "  id="name" class="floating-input" name="name">

                      <label>Full Name*</label>
                      @error('name')
                      <div>{{ $message }}</div>
                     @enderror
                      <div class="error-label"></div>
                    </div>

                    <div class="col-md-6 form-group floating-label">
                      <div class="formicon"><i class="fas fa-phone-alt"></i></div>
                      <input type="tel" placeholder=" " required="required" id="mobile_number" class="floating-input" name="mobile">
                      <label>Mobile Number*</label>
                      @error('phone')
                      <div>{{ $message }}</div>
                     @enderror
                      <div class="error-label"></div>
                    </div>
                  </div>

                  <div class="fieldsets row">
                    <div class="col-md-6 form-group floating-label">
                      <div class="formicon"><i class="fas fa-envelope"></i></div>
                      <input type="email" placeholder=" " required="required" id="email" class="floating-input" name="email">
                      <label>Email Address*</label>
                      @error('email')
                      <div>{{ $message }}</div>
                     @enderror
                      <div class="error-label"></div>
                    </div>

                    <div class="col-md-6 form-group floating-label">
                        <div class="formicon"><i class="fa fa-key" aria-hidden="true"></i></div>
                        <input type="password" placeholder=" " required="required" id="your_location" class="floating-input" name="password">
                        <label> password</label>
                        @error('password')
                        <div>{{ $message }}</div>
                       @enderror
                        <div class="error-label"></div>
                      </div>

                  </div>




                  <div class="custom-control custom-checkbox ctmsetsw">
                    <input type="checkbox" class="custom-control-input ctminpt" id="agree" name="agree" checked="checked">
                    <label class="custom-control-label ctmlabl" for="agree">By clicking the “Submit” button you agree to our  <a href="javascript:void(0)">Terms &amp; Conditions</a>.</label>
                  </div>
                  <div class="fieldsets mt20"> <button type="submit" id="p" name="submit" class="btn btn-main bg-btn w-fit mb20"><span>Sing up <i class="fas fa-chevron-right fa-icon"></i></span> <span class="loader"></span></button> </div>

                  <hr class="mt30 mb30">
                  <div class="text-center">
                      <p class="mb20">or Login with:</p>
                      <div class="social-btnnxx">
                        <a href="#" class="btn-main fb-btn"><i class="fab fa-facebook-f"></i> Facebook</a>
                        <a href="" class="btn-main google-btn"><i class="fab fa-google"></i> Google</a>
                      </div>
                    </div>



                </form>
                    <div>
                        <a href="">Already have an account login.</a>
                    </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </section>

@endsection
