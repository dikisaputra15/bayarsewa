    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-danger sidebar sidebar-dark accordion" id="accordionSidebar">

       <!-- Sidebar - Brand -->
       <a class="sidebar-brand d-flex align-items-center justify-content-center" href="">
          <div class="sidebar-brand-icon rotate-n-15">
             <i class="fas fa-shopping-bag"></i>
          </div>
          <div class="sidebar-brand-text mx-3">Admin</div>
       </a>

       <!-- Divider -->
       <hr class="sidebar-divider my-0">

       <!-- Nav Item - Dashboard -->
       <li class="nav-item">
          <a class="nav-link pb-0" href="<?= base_url('admin'); ?>">
             <i class="fas fa-fw fa-tachometer-alt"></i>
             <span>Dashboard</span></a>
       </li>
       <!-- Nav Item - Dashboard -->
       <li class="nav-item">
          <a class="nav-link pb-0" href="<?= base_url('home'); ?>">
             <i class="fas fa-fw fa-shopping-bag"></i>
             <span>Home Shop</span></a>
       </li>

       <!-- Divider -->
       <hr class="sidebar-divider my-0 mt-3">

       <!-- Nav Item - Dashboard -->
       <li class="nav-item">
          <a class="nav-link pb-0" href="<?= base_url('admin/data_barang'); ?>">
             <i class="fas fa-fw fa-cube"></i>
             <span>Data Barang</span></a>
       </li>

       <li class="nav-item">
          <a class="nav-link pb-0" href="<?= base_url('admin/Menu') ?>">
             <i class="fas fa-fw fa-cube"></i>
             <span>Kategori Barang</span></a>
       </li>

       <li class="nav-item">
          <a class="nav-link pb-0" href="<?= base_url('admin/User') ?>">
             <i class="fas fa-fw fa-user"></i>
             <span>Data User</span></a>
       </li>

       <hr class="sidebar-divider my-0 mt-3">

       <!-- Nav Item - Pages Collapse Menu -->
       <li class="nav-item">
          <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
             <i class="fas fa-fw fa-folder"></i>
             <span>Transaksi</span>
          </a>
          <div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar">
             <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="<?= base_url('snap/transaksi') ?>">Transaksi</a>
                <a class="collapse-item" href="<?= base_url('transaction') ?>">Cek Transaksi</a>
             </div>
          </div>
       </li>

       <li class="nav-item">
          <a class="nav-link" href="<?= base_url('auth/logout') ?>">
             <i class="fas fa-fw fa-sign-out-alt"></i>
             <span>Logout</span></a>
       </li>
       <!-- Divider -->
       <hr class="sidebar-divider d-none d-md-block">

       <!-- Sidebar Toggler (Sidebar) -->
       <div class="text-center d-none d-md-inline">
          <button class="rounded-circle border-0" id="sidebarToggle"></button>
       </div>

    </ul>
    <!-- End of Sidebar -->