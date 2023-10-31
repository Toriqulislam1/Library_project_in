<!--Start Footer-->

@php
$setting = App\Models\setting::find(1);
@endphp

<footer class="footerdez dark-footer pt50 pb80">
    <div class="container">
    <div class="row justify-content-between">
    <div class="col-lg-4 col-sm-12 pt40">
    <div class="footerdez-a">
    <h2>WE WOULD LOVE TO HEAR FROM YOU.</h2>
    <p class="mt10">Feel free to reach out if you want to collaborate with us, or simply have a call.</p>
    <div class="contactinfo mt30">
    <a href="{{ $setting->email  }} "><span class="__cf_email__" data-cfemail="b6d5d9d8c2d7d5c2f6d2d9dbd7dfd8d7dbd398d5d9db"></span>{{ $setting->email  }} <span>→</span></a>
    <a href="{{ $setting->phone  }}">{{ $setting->phone  }}<span>→</span></a>
    </div>
    </div>
    </div>
    <div class="col-lg-7 col-sm-12">
    <div class="row fttlnks">
    <div class="col-lg-4 col-sm-6 pt40">
    <h5>OUR ADDRESS</h5>
    <h4>Dhaka</h4>
    <p>{{ $setting->address }}</p>
    </div>

    <div class="col-lg-4 col-sm-6 pt40">
    <h5>Company</h5>
    <ul class="footer-address-list link-hover">



    <li><a href="{{ route('contact-us')}}" target="_blank">Contact us</a></li>
    <li><a href="{{ route('privacy-view')}}">Privacy Policy</a></li>
    <li><a href="{{ route('terms-view')}}">Terms and Conditions</a></li>

    </ul>
    </div>
    </div>
    <div class="row fttlnks flexend">
    <div class="col-lg-4 col-sm-6 pt60">
    <h5>Follow Us</h5>
    <div class="ff-social-icons mt30">
    <a href="{{ $setting->facebook }}" target="blank"><i class="fab fa-facebook"></i></a>
    <a href="{{ $setting->twitter  }}" target="blank"><i class="fab fa-twitter"></i></a>
    <a href="{{ $setting->linkedin  }}" target="blank"><i class="fab fa-linkedin"></i></a>
    <a href="{{ $setting->instagram }}" target="blank"><i class="fab fa-instagram"></i></a>
    </div>
    </div>
    <div class="col-lg-6 pt60">
    <div class="footer-copyrights-">
    <p>© 2020-2022. All Rights Reserved By <a href="#" target="blank"></a></p>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </footer>


