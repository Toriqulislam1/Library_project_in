@extends('admin.admin_master')
@section('admin')


  <!-- Content Wrapper. Contains page content -->

	  <div class="container-full">
		<!-- Content Header (Page header) -->


		<!-- Main content -->
		<section class="content">
		  <div class="row">



			<div class="col-12">

			 <div class="box">
				<div class="box-header with-border">
				  <h3 class="box-title">Service  List <span class="badge badge-pill badge-danger">  </span></h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">
					  <table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>name</th>
								<th>Phone</th>
								<th>Email</th>
								<th>service</th>
								<th>Order number</th>
								<th>Payment Invoice</th>


							</tr>
						</thead>
						<tbody>
	 @foreach($orders as $item)
	 <tr>

		<td>{{$item->name}}</td>
		 <td>{{$item->phone }}</td>
		 <td>{{ $item->email}}</td>
            @php
                $afterdecode = json_decode($item->service_id , true);
            @endphp

           <td>
            @foreach ($afterdecode as $service )
            @php
                $service_name = App\Models\Services::where('id',$service)->get();
            @endphp
            @foreach ($service_name as $ser)
            {{ $ser->content_title }}
            @endforeach
            @endforeach
           </td>

		 <td>{{$item->order_num }}</td>


		<td width="25%">
        <a href="{{ route('payment-invoice',$item->id) }}" class="btn btn-info" title="Create Invoice">Create</a>
		</td>


	 </tr>
	  @endforeach
						</tbody>

					  </table>
					</div>
				</div>
				<!-- /.box-body -->
			  </div>
			  <!-- /.box -->


			</div>
			<!-- /.col -->





		  </div>
		  <!-- /.row -->
		</section>
		<!-- /.content -->

	  </div>




@endsection
