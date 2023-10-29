@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


	  <div class="container-full">
		<!-- Content Header (Page header) -->


		<!-- Main content -->
		<section class="content">

		 <!-- Basic Forms -->
		  <div class="box">
			<div class="box-header with-border">
			  <h4 class="box-title">Add Invoice</h4>

			</div>
			<!-- /.box-header -->
			<div class="box-body">
			  <div class="row">
				<div class="col">

  <form method="POST" action="{{ route('payment.invoice.store') }}" enctype="multipart/form-data" >
		 	@csrf

              <input type="hidden" name="order_id" value="{{$order_details->id }}">
              <input type="hidden" name="user_id" value="{{$order_details->user_id}}">

	<div class="row">
	 <div class="col-12">

<div class="row"> <!-- start 2nd row  -->


			<div class="col-md-6">

				 <div class="form-group">
			<h5>Name <span class="text-danger">*</span></h5>
			<div class="controls">
				<input type="text" name="name" class="form-control" value="{{ $order_details->name }}" required="">
     @error('name')
	 <span class="text-danger">{{ $message }}</span>
	 @enderror
	 	  </div>
		</div>
            </div>

        <div class="col-md-6">

            <div class="form-group">
       <h5>Email <span class="text-danger">*</span></h5>
       <div class="controls">
           <input type="text" name="email" class="form-control" value="{{ $order_details->email }}" required="">
@error('email')
<span class="text-danger">{{ $message }}</span>
@enderror
      </div>
   </div>

       </div> <!-- end col md 6 -->



		</div> <!-- end 2nd row  -->


		<div class="row"> <!-- start 3rd row  -->



		<div class="col-md-6">

				<div class="form-group">
					<h5>Phone number<span class="text-danger">*</span></h5>
					<div class="controls">
					<input type="text" name="phone" class="form-control" value="{{ $order_details->phone  }}" required="">
					@error('phone')
					<span class="text-danger">{{ $message }}</span>
					@enderror
					</div>
				</div>

		</div> <!-- end col md 6 -->



	<div class="col-md-4">





			<div class="form-group">
				<h5>Short Description  <span class="text-danger">*</span></h5>

				<div class="controls">
			<textarea name="service_descrip" id="textarea" class="form-control" required placeholder="Textarea text">
                @php
                $afterdecode = json_decode($order_details->service_id , true);
                @endphp
                @foreach ($afterdecode as $service )
                @php
                    $service_name = App\Models\Services::where('id',$service)->get();
                @endphp
                @foreach ($service_name as $item)
                {{ $item->content_title }}
                @endforeach
                @endforeach
            </textarea>
				</div>
			</div>

	</div> <!-- end col md 4 -->


		</div> <!-- end 3rd row  -->

        <div class="row"> <!-- start 2nd row  -->


			<div class="col-md-6">

				 <div class="form-group">
			<h5>Price <span class="text-danger">*</span></h5>
			<div class="controls">
				<input type="number" name="price" class="form-control" required="">
     @error('price')
	 <span class="text-danger">{{ $message }}</span>
	 @enderror
	 	  </div>
		</div>
            </div>

        <div class="col-md-6">

            <div class="form-group">
       <h5>Discount <span class="text-danger">*</span></h5>
       <div class="controls">
           <input type="text" name="discount" class="form-control"  required="">
@error('discount')
<span class="text-danger">{{ $message }}</span>
@enderror
      </div>
   </div>

       </div> <!-- end col md 6 -->



		</div> <!-- end 2nd row  -->






	 <hr>

	<div class="row">

						<div class="text-lg-center">
 <input type="submit" class="btn btn-primary  " value="Create Invoice">
						</div>
					</form>

				</div>
				<!-- /.col -->
			  </div>
			  <!-- /.row -->
			</div>
			<!-- /.box-body -->
		  </div>
		  <!-- /.box -->

		</section>
		<!-- /.content -->
	  </div>

	  <script type="text/javascript">
      $(document).ready(function() {
        $('select[name="category_id"]').on('change', function(){
            var category_id = $(this).val();
            if(category_id) {
                $.ajax({
                    url: "{{  url('/category/subcategory/ajax') }}/"+category_id,
                    type:"GET",
                    dataType:"json",
                    success:function(data) {
                    	$('select[name="childcategory_id"]').html('');
                       var d =$('select[name="subcategory_id"]').empty();
                          $.each(data, function(key, value){
                              $('select[name="subcategory_id"]').append('<option value="'+ value.id +'">' + value.subcategory_name + '</option>');
                          });
                    },
                });
            } else {
                alert('danger');
            }
        });
 $('select[name="subcategory_id"]').on('change', function(){
            var subcategory_id = $(this).val();
            if(subcategory_id) {
                $.ajax({
                    url: "{{  url('/category/childcategory/ajax') }}/"+subcategory_id,
                    type:"GET",
                    dataType:"json",
                    success:function(data) {
                       var d =$('select[name="childcategory_id"]').empty();
                          $.each(data, function(key, value){
                              $('select[name="childcategory_id"]').append('<option value="'+ value.id +'">' + value.childcategory_name + '</option>');
                          });
                    },
                });
            } else {
                alert('danger');
            }
        });

    });
    </script>


<script type="text/javascript">
	function mainThamUrl(input){
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e){
				$('#mainThmb').attr('src',e.target.result).width(80).height(80);
			};
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>



<!-- Content Wrapper. Contains page content -->

<div class="container-full">
    <!-- Content Header (Page header) -->


    <!-- Main content -->
    <section class="content">
      <div class="row">



        <div class="col-12">

         <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Invoice List <span class="badge badge-pill badge-danger">  </span></h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <div class="table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Action</th>


                        </tr>
                    </thead>
                    <tbody>
                        @php
                             $invoicebyOrder = App\Models\payment::where('order_id',$order_details->id)->get();
                        @endphp


 @foreach($invoicebyOrder as $item)
 <tr>
    <td> {{ $item->name }}</td>
    <td width="25%">

        <a href="{{ route('admin-download-invoice',$item->id) }}" class="btn btn-info" title="download">Download</a>

        <a href="{{ route('payment.delete',$item->id) }}" class="btn btn-danger" title="Delete Data" id="delete">
            <i class="fa fa-trash"></i></a>

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

