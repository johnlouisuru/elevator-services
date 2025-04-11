 <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">
      <li class="nav-heading">Main Page</li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="dashboard.php">
          <i class="bi bi-speedometer2"></i>
          <span>Dashboard</span>
        </a>
      </li> <!-- End Dashboard Nav -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="home.php">
          <i class="bi bi-people"></i>
          <span>Overall Trainees</span>
        </a>
      </li> <!-- End Dashboard Nav -->

      
      <li class="nav-heading">Categories</li>

      <!-- <li class="nav-item">
        <a class="nav-link collapsed" href="stat.php?stat=7&nature_termi=FOR TERMINATION">
          <i class="bi bi-journal-text"></i>
          <span>For Termination</span>
        </a>
      </li> --><!-- End Blank Page Nav -->

      <!-- <li class="nav-item">
        <a class="nav-link collapsed" href="stat.php?stat=8&nature_termi=FOR MEDICAL DEFERMENT">
          <i class="bi bi-journal-text"></i><span>
          <span>For Medical Deferment</span>
        </a>
      </li> --><!-- End Blank Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-database-fill-lock"></i><span>Case Status</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          
          <?php 
                    $get_hatol = mysqli_query($db,"select * from hatol ORDER BY id ASC");
                            if(mysqli_num_rows($get_hatol)>= 1){ 
                              while($hatol=mysqli_fetch_array($get_hatol)){
                              ?>
          <li>
            <a href="dueto.php?hatol=<?=$hatol['id']?>&stat=<?=$hatol['stat']?>">
              <i class="bi bi-x-octagon-fill"></i><span><?=$hatol['stat']?></span>
            </a>
          </li>
          <?php 
            }
          }
          ?>
          
        </ul>
      </li><!-- End Icons Nav -->
      <li class="nav-heading">Add New</li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="register_trainees.php">
          <i class="bi bi-person"></i></i>

          <span class="bi bi-plus">Register Trainee</span>  
        </a>
      </li><!-- End Register Page Nav -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="register_class.php">
          <i class="bi bi-cloud-upload-fill"></i></i>

          <span class="bi bi-plus">Add Class</span>  
        </a>
      </li><!-- End Register Page Nav -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="register_case.php">
          <i class="bi bi-folder-fill"></i>

          <span class="bi bi-plus">Add Case</span>  
        </a>
      </li><!-- End Register Page Nav -->
      <!-- <li class="nav-heading">Special Orders</li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="upload.php">
          <i class="bi bi-folder"></i>
          <span>Upload File (Special Orders)</span>
        </a>
      </li>
      <li class="nav-heading">Resolution</li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="upload_reso.php">
          <i class="bi bi-folder"></i>
          <span>Upload File (Resolution)</span>
        </a>
      </li> -->
    </ul>

  </aside><!-- End Sidebar-->