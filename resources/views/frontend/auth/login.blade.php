@extends('frontend.front_master')
@section('content')
@section('title')
Library
@endsection

<!--Start login Form-->
<section class="login-page pad-tb">
    <div class="v-center m-auto">
      <div class="login-form-div">
        <h4 class="mb40 text-center">Login to your Account</h4>
        <div class="form-block">

          <form id="contact-form" method="post" action="{{ route('login-user') }}">
            @csrf
            <div class="fieldsets row">
                  @if(session('password_worng'))
                    <div class="alert alert-danger">
                        <strong> {{(session('password_worng')) }}</strong>
                    </div>
              @endif

              <div class="col-md-12 form-group">
                <input id="form_name" type="email" name="email" placeholder="phone/email" required="required">
              </div>
              <div class="col-md-12 form-group"><input  type="password" name="password"  placeholder="password" required="required">
              </div>
            </div>
            <div class="fieldsets row mt20">
              <div class="col-md-6 form-group v-center">
                <button type="submit" class="lnk btn-main bg-btn">Login <span class="circle"></span></button>
              </div>

              <div class="col-md-6 form-group v-center text-right btn-main bg-btn "><a href="{{ route('register-index') }}" class="psforgt">Registration now</a>     </div>
            </div>
            {{-- <hr class="mt30 mb30"> --}}
            {{-- <div class="text-center">
                <p class="mb20">or Login with:</p>
                <div class="social-btnnxx">
                  <a href="" class="btn-main google-btn"><i class="fab fa-google"></i> Google</a>
                </div>
              </div> --}}
          </form>
        </div>
      </div>
      </div>
    </section>
    <!--End login Form-->






@endsection
