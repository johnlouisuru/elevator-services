<html>
<?php 
require('check_sess.php');
require("db/conn.php");
    require('head.php');
    require('fb_time_ago.php');
  ?>
  <head>
   
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

    <div class="pagetitle">
      <h1>ACTIVITY LOGS</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="home.php">Home</a></li>
          <li class="breadcrumb-item active">All Activities</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->


    <section class="section home">
      <div class="row">
        <div class="col-lg-12">

        <div class="card">
            <div class="card-body">
              
              <h5 class="card-title">All Activity Logs</h5>
              <p>Listed below are logs of all activities taken.</p>

              

              <hr />
              <div class="card-body">
              <h5 class="card-title">Recent Trainee's Updates <span class="bi bi-info"> </span></h5>

              <div class="activity">

                <?php 
                    $get_trainees = mysqli_query($db,"select * from logs ORDER BY date DESC");
                            if(mysqli_num_rows($get_trainees)>= 1){ 
                              
                              while($rows2=mysqli_fetch_array($get_trainees)){
                                $date_filed = date("d-M-Y H:i", strtotime($rows2['date']));
                              ?>

                <div class="activity-item d-flex">
                  <div class="activite-label"><?=$date_filed?>H &nbsp </div>
                  <i class='bi bi-pencil activity-badge text-success align-self-start'></i>
                  <div class="activity-content">
                    <?php 
                      $query2 = mysqli_query($db,"select * from list WHERE id=$rows2[tid]");
                      
                      $result3 = $query2->fetch_assoc(); 
                      if($result3){ 
                      $x3 = $result3['fullname'];
                      } else {
                        $x3 = '';
                      }
                    ?>
                    <?=$rows2['activity']?> <a href="tprofile.php?id=<?=$rows2['tid']?>" class="fw-bold text-dark"> <?=$x3?></a> 
                  </div>
                </div><!-- End activity item-->



                <?php 
                    }
                    ?>
                    <hr />
                        

                    <?php
                }
                else { ?>
                <div class="activity-item d-flex">
                  <div class="activite-label">No Data Found.</div>
                  <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                  <div class="activity-content">
                    No Data Found As of Now.
                  </div>
                </div><!-- End activity item-->
                <hr />

                <?php 
                }
                ?>

                <!-- End activity item-->

              </div>

            </div>
          </div><!-- End Recent Activity -->

            </div>
          </div>
      </div>
    </section>
    
 
  </main><!-- End #main -->


   
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