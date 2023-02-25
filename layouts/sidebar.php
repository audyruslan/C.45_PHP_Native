  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <!-- Brand Logo -->
      <a href="index.php" class="brand-link">
          <?php
            if (empty($_SESSION["username"])) {
            ?>
          <img src="assets/img/logo.png" alt="InstaCode Logo" class="brand-image img-circle elevation-3"
              style="opacity: .8">
          <span class="brand-text font-weight-light">InstaCode</span>
          <?php } else { ?>
          <img src="assets/img/logo.png" alt="InstaCode Logo" class="brand-image img-circle elevation-3"
              style="opacity: .8">
          <span class="brand-text font-weight-light">InstaCode</span>
          <?php } ?>
      </a>

      <!-- Sidebar -->
      <div class="sidebar">
          <!-- Sidebar user panel (optional) -->
          <?php
            if (!empty($_SESSION["username"])) {
            ?>
          <div class="user-panel mt-3 pb-3 mb-3 d-flex">
              <div class="image">
                  <img src="admin/<?= $admin["img_dir"]; ?>" class="img-circle elevation-2" alt="User Image">
              </div>
              <div class="info">
                  <a href="#" class="d-block"><?= $admin["nama_lengkap"]; ?></a>
              </div>
          </div>
          <?php } ?>

          <!-- Sidebar Menu -->
          <nav class="mt-2">
              <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                  data-accordion="false">
                  <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                  <li class="nav-item">
                      <a href="index.php" class="nav-link active">
                          <i class="nav-icon fas fa-tachometer-alt"></i>
                          <p>Dashboard</p>
                      </a>
                  </li>
                  <li class="nav-header">Menu</li>
                  <li class="nav-item">
                      <a href="training.php" class="nav-link">
                          <i class="nav-icon fas fa-edit"></i>
                          <p>
                              Data Training
                          </p>
                      </a>
                  </li>
                  <li class="nav-item">
                      <a href="testing.php" class="nav-link">
                          <i class="nav-icon fas fa-table"></i>
                          <p>
                              Data Testing
                          </p>
                      </a>
                  </li>
                  <li class="nav-item">
                      <a href="perhitungan.php" class="nav-link">
                          <i class="nav-icon fas fa-folder-tree"></i>
                          <p>
                              Perhitungan C4.5
                          </p>
                      </a>
                  </li>
                  <li class="nav-item">
                      <a href="kondisi.php" class="nav-link">
                          <i class="nav-icon fas fa-server"></i>
                          <p>
                              Pengujian
                          </p>
                      </a>
                  </li>
                  <li class="nav-item">
                      <a href="#" class="nav-link">
                          <i class="nav-icon fas fa-flask"></i>
                          <p>
                              Prediksi
                              <i class="fas fa-angle-left right"></i>
                          </p>
                      </a>
                      <ul class="nav nav-treeview">
                          <li class="nav-item">
                              <a href="admin.php" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>Admin</p>
                              </a>
                          </li>
                      </ul>
                  </li>
                  <li class="nav-item">
                      <a href="#" class="nav-link">
                          <i class="nav-icon fas fa-cog"></i>
                          <p>
                              Pengaturan
                              <i class="fas fa-angle-left right"></i>
                          </p>
                      </a>
                      <ul class="nav nav-treeview">
                          <li class="nav-item">
                              <a href="admin.php" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>Admin</p>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a href="password.php" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>Ubah Password</p>
                              </a>
                          </li>
                      </ul>
                  </li>
                  <li class="nav-item">
                      <a href="logout.php" class="nav-link">
                          <i class="nav-icon fas fa-sign-out-alt"></i>
                          <p>
                              Logout
                          </p>
                      </a>
                  </li>
              </ul>
          </nav>
          <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
  </aside>