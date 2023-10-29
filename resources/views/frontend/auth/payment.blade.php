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


            </div>
        </div>

    </div>
</div>

<div class="container mb-100px">


    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-body">

                    <table class="table table-bordered table-sm">
                        <thead>


                            <tr>

                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Download</th>
                            </tr>
                        </thead>
                        <tbody>




                            @foreach ($service as $item)
                            <tr>
                                <td>{{$item->name  }}</td>
                                <td>{{$item->email}}</td>
                                <td>{{$item->phone}}</td>
                                <td><a href="{{ route('user-download-payment',$item->id) }}">download</a></td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
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
