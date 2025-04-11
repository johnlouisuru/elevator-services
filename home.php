<!DOCTYPE html>
<html lang="en">

<?php 
require('check_sess.php');
require("db/conn.php");
    require('head.php');
    require('fb_time_ago.php');

  ?>
<head>
  <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
  <script>
    $(document).ready(function() {

     $('.opns').on("click", function() {
      $('.modal').show();
          var x = $(this).val();
          var y = $('#aa'+x).val();
          
         var formData = {
              tid : x,
              cid : y
            };

          $.ajax({
              type: "POST",
              url: "update_trainee_case_status.php",
              data: formData,
              dataType: "json",
              encode: true,
            }).done(function(data) {
              $('.modal').hide();
              var sel2 = $(".toast-body");
              sel2.empty();
              sel2.append(data['message']);
              $('.toast').toast('show');
              
            });
/*alert('heto');
          return;*/
             event.preventDefault();
     });
     
     
    });
  </script>
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
      <h1>List of Trainees</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="home.php">Home</a></li>
          <li class="breadcrumb-item active">List</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

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


    <section class="section home">
      <div class="row">



        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              
              <h5 class="card-title">Overall Trainees</h5>
              <p>Listed below are trainees in different RTCs that are under monitoring and/or Academic Board.</p>

              <!-- Table with stripped rows -->

             
              <table class="table datatable">
                <thead>
                  <tr>
                    <th>Rank</th>
                    <th>Full Name</th>
                    <th>Age</th>
                    <th>Case</th>
                    <th>RTC</th>
                    <th>Update</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php 

                  //echo $db;
                    $get_trainees = mysqli_query($db,"select * from list WHERE is_terminated IS NULL AND nature_termi != 0");
                            if(mysqli_num_rows($get_trainees)>= 1){ 
                              //echo "<h1>Meron</h1>";
                              $age = "??";
                              while($rows2=mysqli_fetch_array($get_trainees)){
                                $date_filed = date("d-M-Y H:i", strtotime($rows2['date']));
                                if($rows2['age'] == ''){

                                }
                                else {
                                  $age = $rows2['age'];
                                }
                              ?>
                      <tr>
                        <td><?=$rows2['rank']?></td>
                        <td><a href="tprofile.php?id=<?=$rows2['id']?>"><?=$rows2['fullname']?></a></td>
                        <td><?=$age?></td>
                        <?php 
                        $x4 = "";
                          $status = mysqli_query($db,"select * from hatol WHERE id=$rows2[nature_termi]");
                          if($status){
                            $result4 = $status->fetch_assoc(); 
                            $x4 = $result4['stat'];
                          }
                          else {
                            $x4 = $rows2['nature_termi'];
                          } 
                          

                        ?>
                        <td><?=$x4?> (<?=facebook_time_ago($date_filed)?>)</td>
                        <?php 
                          $query2 = mysqli_query($db,"select * from rtc WHERE id=$rows2[rtc]");
                          $result3 = $query2->fetch_assoc();  
                          $x3 = $result3['rtc_short'];
                        ?>
                        <td><a href="thrurtc.php?rtc=<?=$result3['id']?>&r=<?=$x3?>"><?=$x3?></a></td>
                        <td>
                            <select class="form-select" id="aa<?=$rows2['id']?>" name="aa<?=$rows2['id']?>" required>
                            <?php 
                            $get_hatol = mysqli_query($db,"select * from hatol");
                              if(mysqli_num_rows($get_hatol)>= 1){ 
                                $selected = "";
                              while($hatol=mysqli_fetch_array($get_hatol)){
                                if($rows2['nature_termi'] == $hatol['id']){
                                    $selected = "selected";
                                }

                                ?>

                                  <option value="<?=$hatol['id']?>" <?=$selected?>><?=$hatol['stat']?></option>
                              <?php 
                                $selected = "";
                                }
                              }
                              ?>
                            </select>
                        </td>
                        <td><button name="<?=$rows2['id']?>" id="<?=$rows2['id']?>" value="<?=$rows2['id']?>" class="opns bi bi-pencil btn btn-info"></button></td>
                      </tr>
                  <?php
                        }
                      }
                      else { ?>
                        <tr>
                        <td colspan="7"><center><b>No Entries Found</b></center></td>
                      </tr>
                      <?php  
                      }
                  ?>
                </tbody>
              </table>
              <!-- End Table with stripped rows -->

            </div>
          </div>

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