<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">

        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>Chủ đề</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ route('chude.index') }}">Danh sách Chủ đề</a></li>
            <li class=""><a href="{{ route('chude.create') }}">Thêm mới Chủ đề</a></li>
          </ul>
        </li>

        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>Loại</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ route('loai.index') }}">Danh sách Loại</a></li>
            <li class=""><a href="{{ route('loai.create') }}">Thêm mới Loại</a></li>
          </ul>
        </li>

        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>Sản phẩm</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ route('sanpham.index') }}">Danh sách Sản phẩm</a></li>
            <li class=""><a href="{{ route('sanpham.create') }}">Thêm mới Sản phẩm</a></li>
          </ul>
        </li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>
