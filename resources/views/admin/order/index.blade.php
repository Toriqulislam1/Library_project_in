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
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">
					  <table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Image</th>
								<th> Title</th>
								<th>Status </th>

								<th>Download</th>


							</tr>
						</thead>
						<tbody>
	 @foreach($orders as $item)
	 <tr>
        <td> <img src="{{ asset($item->product->thamble ) }}" style="width: 60px; height: 50px;"> </td>
		<td>{{ $item->product->content_title  }}</td>
		 <td>
		 	<span class="badge badge-pill badge-success">{{ $item->status }}</span>
		 </td>
		 <td><a  class="btn btn-success" href="{{ route('invoice',$item->id) }}">invoice</a></td>


		<td width="25%">
            <form method="post" action="{{ route('status-update') }}" >
                <input type="hidden" name="id" value="{{$item->id  }}">
                @csrf
                <select name="status">
                    <option>panding</option>
                    <option>confirm</option>
                    <option>delevary</option>
                    <option>cancel</option>
                </select>
                <button type="submit" class="btn btn-info" title="status"> update</button>
            </form>
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
