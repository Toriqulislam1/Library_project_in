
<style>
    .dropbtn {
      background-color: white;
      color: black;
      padding: 16px;
      font-size: 16px;
      border: none;
      cursor: pointer;
      font-family: 'Poppins', sans-serif
    }

    .dropdown {
      position: relative;
      display: inline-block;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
      z-index: 1;
    }

    .dropdown-content a {
      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
    }

    .dropdown-content a:hover {background-color: #f1f1f1}

    .dropdown:hover .dropdown-content {
      display: block;
    }

    .dropdown:hover .dropbtn {
      background-color: white;
    }
    </style>


@php
$setting = App\Models\setting::find(1);
@endphp




<header class="header-pr nav-bg-w main-header navfix fixed-top menu-white" style="background: white;">
    <div class="container m-pad">
        <div class="menu-header">
            <div class="dsk-logo"><a class="nav-brand" href="{{ url('/') }}">

                    <img src="{{ asset($setting->logo) }}" alt="Logo" class="mega-darks-logo" />
                </a>
            </div>

            <div class="custom-nav" role="navigation">


                <ul class="nav-list onepge">
                    <li><a href="{{ url('/') }}" class="menu-links">Home</a></li>
                    <li><a href="#services" class="menu-links">Services</a></li>
                    <li><a href="#work" class="menu-links">Work</a></li>


                    @if(Auth::check())
                    <div class="dropdown">
                        <button class="dropbtn">Dashboard</button>
                        <div class="dropdown-content">
                            <a class="dropdown-item" href="{{ route('user-profile-index') }}">Profile</a>
                            <a class="dropdown-item" href="{{ route('order-show-user-profile') }}">Order</a>
                            <a class="dropdown-item" href="{{ route('order-user-payment') }}">Payment invoice</a>
                            <a class="dropdown-item" href="{{ route('logout-user') }}">Logout</a>

                        </div>
                      </div>
                      @else
                      <a style="  font-size: 16px;
                      color: #000;
                      font-family: 'Poppins', sans-serif;
                      font-weight: 500;
                      padding: 0px 15px;
                      line-height: 85px;
                      text-transform: uppercase;
                      position: relative;
                      overflow: hidden;" href="{{ route('login-index') }}" class="menu-links">Login</a>
                      @endif






                    <li><a href="https://wa.me/+8801535880909" class="btn-outline icon-btn">Chat With Us <i class="fab fa-whatsapp"></i></a> </li>
                </ul>
            </div>
            <div class="mobile-menu2">
                <ul class="mob-nav2">
                    <li><a href="#" class="btn-round- trngl btn-br bg-btn btshad-b1" data-bs-toggle="modal"
                            data-bs-target="#menu-popup"><i class="fas fa-envelope-open-text"></i></a></li>
                    <li class="navm-"> <a class="toggle" href="#"><span></span></a></li>
                </ul>
            </div>
        </div>

        <nav id="main-nav">
            <ul class="first-nav">
                <li><a href="#home" class="menu-links">Home</a></li>
                <li><a href="#services" class="menu-links">Services</a></li>
                <li><a href="#work" class="menu-links">Work</a></li>

                @if(Auth::check())
                <div class="dropdown">
                    <button class="dropbtn">Dashboard</button>
                    <div class="dropdown-content">
                        <a class="dropdown-item" href="{{ route('user-profile-index') }}">Profile</a>
                        <a class="dropdown-item" href="{{ route('order-show-user-profile') }}">Order</a>
                        <a class="dropdown-item" href="{{ route('order-user-payment') }}">Payment invoice</a>
                        <a class="dropdown-item" href="{{ route('logout-user') }}">Logout</a>

                    </div>
                  </div>
                  @else
                  <a style="  font-size: 16px;
                  color: #000;
                  font-family: 'Poppins', sans-serif;
                  font-weight: 500;
                  padding: 0px 15px;
                  line-height: 85px;
                  text-transform: uppercase;
                  position: relative;
                  overflow: hidden;" href="{{ route('login-index') }}" class="menu-links">Login</a>
                  @endif

            </ul>
            <ul class="bottom-nav">
                <li class="prb">
                    <a href="tel:+11111111111">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 384">
                            <path
                                d="M353.188,252.052c-23.51,0-46.594-3.677-68.469-10.906c-10.719-3.656-23.896-0.302-30.438,6.417l-43.177,32.594
                        c-50.073-26.729-80.917-57.563-107.281-107.26l31.635-42.052c8.219-8.208,11.167-20.198,7.635-31.448
                        c-7.26-21.99-10.948-45.063-10.948-68.583C132.146,13.823,118.323,0,101.333,0H30.813C13.823,0,0,13.823,0,30.813
                        C0,225.563,158.438,384,353.188,384c16.99,0,30.813-13.823,30.813-30.813v-70.323C384,265.875,370.177,252.052,353.188,252.052z" />
                        </svg>
                    </a>
                </li>
                <li class="prb">
                    <a href="/cdn-cgi/l/email-protection#186b77757d6f7d7a757d7c7179587f75797174367b7775">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <path
                                d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z" />
                            <path d="M0 0h24v24H0z" fill="none" />
                        </svg>
                    </a>
                </li>
                <li class="prb">
                    <a href="skype:niwax.company?call">
                        <svg enable-background="new 0 0 24 24" height="18" viewBox="0 0 24 24" width="18"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="m23.309 14.547c1.738-7.81-5.104-14.905-13.139-13.543-4.362-2.707-10.17.352-10.17 5.542 0 1.207.333 2.337.912 3.311-1.615 7.828 5.283 14.821 13.311 13.366 5.675 3.001 11.946-2.984 9.086-8.676zm-7.638 4.71c-2.108.867-5.577.872-7.676-.227-2.993-1.596-3.525-5.189-.943-5.189 1.946 0 1.33 2.269 3.295 3.194.902.417 2.841.46 3.968-.3 1.113-.745 1.011-1.917.406-2.477-1.603-1.48-6.19-.892-8.287-3.483-.911-1.124-1.083-3.107.037-4.545 1.952-2.512 7.68-2.665 10.143-.768 2.274 1.76 1.66 4.096-.175 4.096-2.207 0-1.047-2.888-4.61-2.888-2.583 0-3.599 1.837-1.78 2.731 2.466 1.225 8.75.816 8.75 5.603-.005 1.992-1.226 3.477-3.128 4.253z" />
                        </svg>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</header>
