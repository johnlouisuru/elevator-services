<!DOCTYPE html>
<html lang="en">

<?php 

session_start();

// Check if the user is logged in
if(!isset($_SESSION['user_id'])) {
    // User is not logged in, redirect to login page
    header('Location: log_in.php');
    exit();
}

require("db/conn.php");
    require('head.php');
    require('fb_time_ago.php');

  ?>
<head>
  <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
 
</head>
<body>

  <?php 
    require('header.php');
  ?>

<?php 
    require('sidebar.php');

  ?>

  <!-- BODY CONTENT -->
  <main id="main" class="toggle-sidebar">

    

    <!-- Toast with Placements -->
<div class="position-fixed top-1 end-0" style="z-index: 11" data-bs-autohide="false">
  <div id='liveToast'
  class="toast"
  role="alert"
  aria-live="polite"
  aria-atomic="true">
              <div class="toast-header" >
                <i class="bx bx-bell me-2"></i>
                <div class="me-auto fw-semibold">Notification</div>
                <small id='minutes'>Just Now</small>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
              </div>
              <div class="toast-body">
        </div>
      </div>
    </div>
              <!-- Toast with Placements -->

              <div class="modal" id="myModal" tabindex="-1" style="position: fixed; top: 25%;">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Please Wait</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <p>Please Wait while sending your request...</p>
                  <div class="col-12" id="lowding">
                    <div class="spinner-grow text-primary" role="status">
                      <span class="visually-hidden">Loading...</span>
                    </div>
                    <div class="spinner-grow text-secondary" role="status">
                      <span class="visually-hidden">Loading...</span>
                    </div>
                    <div class="spinner-grow text-success" role="status">
                      <span class="visually-hidden">Loading...</span>
                    </div>
                    <div class="spinner-grow text-danger" role="status">
                      <span class="visually-hidden">Loading...</span>
                    </div>
                    <div class="spinner-grow text-warning" role="status">
                      <span class="visually-hidden">Loading...</span>
                    </div>
                    <div class="spinner-grow text-info" role="status">
                      <span class="visually-hidden">Loading...</span>
                    </div>
                    <div class="spinner-grow text-light" role="status">
                      <span class="visually-hidden">Loading...</span>
                    </div>
                    <div class="spinner-grow text-dark" role="status">
                      <span class="visually-hidden">Loading...</span>
                    </div>
              </div>
                </div>
              </div>
            </div>
          </div>
    
              <!-- LOADING KEMERUT -->
    <!-- Start Page Title -->
    <div class="pagetitle">
      <h1>Project Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
          <li class="breadcrumb-item active">Project</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section home">
      <div class="row">



        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              
              <h4 class="card-title ">OVERALL PROJECTS</h4>
              <p>Listed below are the Projects and its details.</p>

              <!-- Table with stripped rows -->

              <!-- <div class="progress">
                <div class="progress-bar" role="progressbar" style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
              </div> -->
              <div class="table-responsive">
              <table class="table datatable">
                <thead>
                  <tr>
                    <th>Project Name</th>
                    <th>Budget</th>
                    <!-- <th>Description</th> -->
                    <th>Team Leader</th>
                    <th>Timeline (%)</th>
                    <th>Date Added</th>
                    <!-- <th>Date Start/ed</th>
                    <th>Date End</th> -->
                  </tr>
                </thead>
                <tbody>
                  <?php 

                  //echo $db;
                    $get_project = mysqli_query($db,"select * from project WHERE is_finished != 1");
                            if(mysqli_num_rows($get_project)>= 1){ 
                              while($rows2 = mysqli_fetch_assoc($get_project)){
                                $timeline = $rows2['timeline'];
                              ?>
                      <tr>
                      <td><a href="project.php?id=<?=$rows2['id']?>&p=<?=$rows2['name']?>"><?=$rows2['name']?></a></td>
                      <?php 
                      $n = $rows2['budget'];
                        if ($n < 1000000) {
                          // Anything less than a million
                          $n_format = number_format($n);
                      } else if ($n < 1000000000) {
                          // Anything less than a billion
                          $n_format = number_format($n / 1000000, 2) . 'M';
                      } else {
                          // At least a billion
                          $n_format = number_format($n / 1000000000, 2) . 'B';
                      }
                      ?>

                      <?php 
                        $team_leader = "No User Found";
                          $status = mysqli_query($db,"select fullname from users WHERE id=$rows2[teamleader_id]");
                          if(mysqli_num_rows($status) >= 1){
                            $result4 = $status->fetch_assoc(); 
                            $team_leader = $result4['fullname'];
                          }
                          else {
                            $team_leader = "No User Found";
                          } 
                          
                      ?>
                        <td><?=$team_leader?></td>

                        <td>₱<?=$n_format?></td>
                        <!-- <td><?=$rows2['description']?></td> -->
                        
                        
                        <td>
          <div class="progress">
            <div class="progress-bar" role="progressbar" style="width: <?=$timeline?>%;" aria-valuenow="<?=$timeline?>" aria-valuemin="0" aria-valuemax="100"><?=$timeline?>%</div>
          </div>
                        </td>
                        <td><?=date("d-M-Y H:i", strtotime($rows2['date']))?></td>
                        <!-- <td><?=$rows2['date_started']?></td>
                        <td><?=$rows2['date_end']?></td> -->
                      </tr>
                  <?php
                        }
                      }
                      else { ?>
                        <tr>
                        <td colspan="6"><center><b>No Entries Found</b></center></td>
                      </tr>
                      <?php  
                      }
                  ?>
                </tbody>
              </table>
              </div>
              <!-- End Table with stripped rows -->

            </div>
          </div>

         <!-- UPCOMING PROJECTS TABLE HERE... -->
        </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- BODY CONTENT -->

  <?php 
    require('footer.php');
  ?>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

  

</body>

</html>