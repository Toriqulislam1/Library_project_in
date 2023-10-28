@extends('frontend.front_master')
@section('content')

<style>
    body {
        margin-top: 20px;
        color: #1a202c;
        text-align: left;
        background-color: #e2e8f0;
    }

    .main-body {
        padding: 15px;
    }

    .card {
        box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06);
    }

    .card {
        position: relative;
        display: flex;
        flex-direction: column;
        min-width: 0;
        word-wrap: break-word;
        background-color: #fff;
        background-clip: border-box;
        border: 0 solid rgba(0, 0, 0, .125);
        border-radius: .25rem;
    }

    .card-body {
        flex: 1 1 auto;
        min-height: 1px;
        padding: 1rem;
    }

    .gutters-sm {
        margin-right: -8px;
        margin-left: -8px;
    }

    .gutters-sm>.col,
    .gutters-sm>[class*=col-] {
        padding-right: 8px;
        padding-left: 8px;
    }

    .mb-3,
    .my-3 {
        margin-bottom: 1rem !important;
    }

    .bg-gray-300 {
        background-color: #e2e8f0;
    }

    .h-100 {
        height: 100% !important;
    }

    .shadow-none {
        box-shadow: none !important;
    }
</style>
@if(Auth::check())

<div class="container " style="margin-top: 100px">
    <div class="main-body">
        <div class="row gutters-sm">
            <div class="col-md-4 mb-3">

                <div class="card">
                    <div class="card-body">
                        <div class="d-flex flex-column align-items-center text-center">
                            @if(isset(Auth::user()->image))
                            <img src="{{ asset( Auth::user()->image) }}" alt="Admin"
                                class="rounded-circle" width="150">
                                @else
                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin"
                                class="rounded-circle" width="150">
                            @endif
                            <div class="mt-3">
                                <h4>{{ Auth::user()->name }}</h4>
                            </div>
                        </div>


                        <form action="{{ route('userProfileImage') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="mb-3">
                                <label for="formFile" class="form-label">profile Image</label>
                                <input class="form-control" type="file" id="formFile" name="image">
                              </div>


                              <div class="row">
                                <div class="col-sm-12">
                                    <button type="submit" class="btn btn-info "
                                        href="">Update</button>
                                </div>
                            </div>
                        </form>



                    </div>
                </div>

            </div>

            <div class="col-md-8">
                <div class="card mb-3">
                    <div class="card-body">
                    <form action="{{ route('userinfo-update') }}" method="post">
                        @csrf

                        <div class="mb-3">
                            <input type="text" class="form-control" name="name" id="exampleFormControlInput1" value=" {{ Auth::user()->name }}" placeholder="name">
                        </div>
                        <div class="mb-3">
                            <input type="email" class="form-control" name="email" id="exampleFormControlInput1" value="   {{ Auth::user()->email }}" placeholder="name@example.com">
                        </div>
                        <div class="mb-3">
                            <input type="text" class="form-control" name="mobile" id="exampleFormControlInput1" value=" {{ Auth::user()->mobile }}" placeholder="phone">
                        </div>
                        <div class="mb-3">
                            <input type="password" class="form-control" name="password" id="exampleFormControlInput1" placeholder="new password">
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <button type="submit" class="btn btn-info "
                                   >Update</button>
                            </div>
                        </div>
                    </form>
                    </div>
                </div>

            </div>
        </div>

    </div>
</div>


</div>

@else

<span class="bg-red">no login</span>
@endif


@endsection
