 <!-- Left side column. contains the logo and sidebar -->
 <aside class="main-sidebar">
    <!-- sidebar-->
    <section class="sidebar">

        <div class="user-profile">
			<div class="ulogo">
				 <a href="/admin/dashboard">
				  <!-- logo for regular state and mobile devices -->
					 <div class="d-flex align-items-center justify-content-center">
						  <img src="/admin/dashboard" alt="">
						  <h3><b>Car</b> Admin</h3>
					 </div>
				</a>
			</div>
        </div>

      <!-- sidebar menu-->
      <ul class="sidebar-menu" data-widget="tree">

		<li>
          <a href="/admin/dashboard">
            <i data-feather="pie-chart"></i>
			<span>Dashboard</span>
          </a>
        </li>



        <li class="treeview">
          <a href="#">
            <i data-feather="message-circle"></i>
            <span>Slider</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ route('create-add')}}"><i class="ti-more"></i>Create</a></li>
            <li><a href="{{ route('slide-manage')}}"><i class="ti-more"></i> Manage slide </a></li>
          </ul>
        </li>


        <li class="treeview">
          <a href="#">
            <i data-feather="file"></i>
            <span>Product</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">

            <li><a href="{{ route('add-content')}}"><i class="ti-more"></i>Add Product</a></li>
            <li><a href="{{ route('manage-content')}}"><i class="ti-more"></i>Manage Product</a></li>

          </ul>
        </li>



        <li class="treeview">
            <a href="#">
              <i data-feather="file"></i>
              <span>Order</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-right pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">

              <li><a href="{{ route('order-show')}}"><i class="ti-more"></i>All order</a></li>
      

            </ul>
          </li>


		<li class="treeview">
          <a href="">
            <i data-feather="server"></i>
			<span>Basic setting</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ route('add.setting')}}"><i class="ti-more"></i>add setting</a></li>
          </ul>
        </li>

        <li class="treeview">
          <a href="#">
            <i data-feather="message-circle"></i>
            <span>Company profile</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ route('policy-add')}}"><i class="ti-more"></i>Add Policy</a></li>
            <li><a href="{{ route('policy-manage')}}"><i class="ti-more"></i>Manage Policy</a></li>
            <li><a href="{{ route('terms-add')}}"><i class="ti-more"></i>Add Terms</a></li>
            <li><a href="{{ route('terms-manage')}}"><i class="ti-more"></i>Manage Terms</a></li>

          </ul>
        </li>


      </ul>
    </section>

	<div class="sidebar-footer">
		<!-- item-->
		<a href="javascript:void(0)" class="link" data-toggle="tooltip" title="" data-original-title="Settings" aria-describedby="tooltip92529"><i class="ti-settings"></i></a>
		<!-- item-->
		<a href="mailbox_inbox.html" class="link" data-toggle="tooltip" title="" data-original-title="Email"><i class="ti-email"></i></a>
		<!-- item-->
		<a href="javascript:void(0)" class="link" data-toggle="tooltip" title="" data-original-title="Logout"><i class="ti-lock"></i></a>
	</div>
  </aside>
