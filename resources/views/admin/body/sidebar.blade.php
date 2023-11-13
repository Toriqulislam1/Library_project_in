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
						  <h3><b>Book</b> Admin</h3>
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
            <i data-feather="file"></i>
            <span>Books</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">

            <li><a href="{{ route('add-content')}}"><i class="ti-more"></i>Add Book</a></li>
            <li><a href="{{ route('manage-content')}}"><i class="ti-more"></i>Manage Book</a></li>

          </ul>
        </li>



        <li class="treeview">
            <a href="#">
              <i data-feather="file"></i>
              <span>Request for Book</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-right pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="{{ route('order-show')}}"><i class="ti-more"></i>All Book request</a></li>

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




      </ul>
    </section>


  </aside>
