<?php 
require('check_sess.php');
require("db/conn.php");
  ?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Add Trainee</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Jan 29 2024 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

  <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
  <script>
    $(document).ready(function() {
      $('#myModal').hide();
        $('#submit').prop('disabled',true);
        $('input:checkbox').click(function() {
          if ($(this).is(':checked')) {
           $('#submit').prop("disabled", false);
           } else {
           if ($('.checks').filter(':checked').length < 1){
           $('#submit').attr('disabled',true);}
           }
        });
      
     $('#submit').on("click", function() {
      //alert('hehe');
          //var x = $(this).val();
          //var y = $('#aa'+x).val();
          //Value of Trainee ID is x
          //Value of Case Status is y
          //alert('value is of TID '+x+' // Value of Case is '+y);
      if($('#fullname').val() == "" && $('#fullname').val().length <5){
        var sel2 = $(".toast-body");
            sel2.empty();
            sel2.append("<p class='alert alert-danger'>Full Name Must Not Be Empty or Less than 5 Characters.</p>");
              $('.toast').toast('show');
      }
      else {
      //alert();
      //return;
          if (confirm("Detail Confirmation: "+$('#rank').val()+" "+$('#fullname').val()+" ?") == true) {
            $('.modal').show();
            var rank = $('#rank').val();
              var fullname = $('#fullname').val();
              var age = $('#age').val();
              var class_id = $('#class_id').val();
              var nature_termi = $('#nature_termi').val();
              var rtc_id = $('#rtc_id').val();
              var acadsess = $('#acadsess').val();
              var reso = $('#reso').val();
              var so = $('#so').val();
              var remarks = $('#remarks').val();
              
             var formData = {
                  rank_ : rank,
                  fullname_ : fullname,
                  age_ : age,
                  class_id_ : class_id,
                  nature_termi_ : nature_termi,
                  rtc_id_ : rtc_id,
                  acadsess_ : acadsess,
                  reso_ : reso,
                  so_ : so,
                  remarks_ : remarks
                };
                /*alert("til dito");
              return;*/
              $.ajax({
                  type: "POST",
                  url: "process_register_trainee.php",
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
          } else {
            
          }
        }
      
          

             event.preventDefault();
     });
     
     
    });
  </script>
</head>

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="home.php" class="logo d-flex align-items-center w-auto">
                  <img src="assets/img/logo.png" alt="">
                  <span class="d-none d-lg-block">CGETDC Admin</span>
                </a>
              </div><!-- End Logo -->

              <!-- Toast with Placements -->
<div class="position-fixed top-0 end-0" style="z-index: 11" data-bs-autohide="false">
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
    
              <!-- Toast with Placements -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Add Trainee</h5>
                    <p class="text-center small">Trainees' Details</p>
                  </div>

                  <form class="row g-3 needs-validation" novalidate>
                    
                    <div class="col-12">
                      <label for="validationDefault04" class="form-label">Trainees' Rank</label>
                      <select class="form-select" name="rank" id="rank" required>
                        <option value="CCGNO" selected >CCGNO</option>
                        <option value="CCGO">CCGO</option>
                        <option value="CGSO">CGSO</option>
                        <option value="CG P/ENS">CG P/ENS</option>
                      </select>
                    </div>

                    <div class="col-12">
                      <label for="yourName" class="form-label">Trainee's Full Name</label>
                      <input type="text" name="fullname" class="form-control" id="fullname" placeholder="First Name M.I Lastname" required>
                      <div class="invalid-feedback">Please, enter Name!</div>
                    </div>

                    <div class="col-12">
                      <label for="yourName" class="form-label">Trainee's Remarks</label>
                      <textarea name="remarks" class="form-control" id="remarks" placeholder="Insert Remarks..."></textarea>
                      <!-- <input type="text" name="remarks" class="form-control" id="remarks" placeholder="Remarks" required> -->
                      <div class="invalid-feedback">Please, Enter Remarks</div>
                    </div>

                    <div class="col-12">
                      <label for="yourName" class="form-label">Age</label>
                      <input type="number" name="age" class="form-control" id="age" placeholder="Age...">
                      <div class="invalid-feedback">Please, enter Age!</div>
                    </div>

                    <div class="col-12">
                      <label for="yourName" class="form-label">Acad Session</label>
                      <input type="number" name="age" class="form-control" id="acadsess" placeholder="Insert # of session">
                      <div class="invalid-feedback">Please, enter Acad Session!</div>
                    </div>

                    <div class="col-12">
                      <label for="validationDefault04" class="form-label">Resolution</label>
                      <select class="form-select" name="reso" id="reso" required>
                        <option value="0">No Reso Yet.</option>
                        <?php 
                    $get_trainees = mysqli_query($db,"select * FROM resolution");
                            if(mysqli_num_rows($get_trainees)>= 1){ 
                              while($rows2=mysqli_fetch_array($get_trainees)){
                              ?>
                        <option value="<?=$rows2['id']?>"><?=$rows2['orig_name']?></option>
                      
                  <?php
                        }
                      }
                      else { ?>
                        
                        <option><b>No Entries Found</b></option>
                      
                      <?php  
                      }
                  ?>
                      </select>
                    </div>

                    <div class="col-12">
                      <label for="validationDefault04" class="form-label">Special Order</label>
                      <select class="form-select" name="so" id="so" required>
                        <option value="0">No S.O Yet.</option>
                        <?php 
                    $get_trainees = mysqli_query($db,"select * FROM orders");
                            if(mysqli_num_rows($get_trainees)>= 1){ 
                              while($rows2=mysqli_fetch_array($get_trainees)){
                              ?>
                        <option value="<?=$rows2['id']?>"><?=$rows2['orig_name']?></option>
                      
                  <?php
                        }
                      }
                      else { ?>
                        
                        <option><b>No Entries Found</b></option>
                      
                      <?php  
                      }
                  ?>
                      </select>
                    </div>

                    <div class="col-12">
                      <label for="validationDefault04" class="form-label">Class</label>
                      <select class="form-select" name="class" id="class_id" required>
                        <?php 
                    $get_trainees = mysqli_query($db,"select * FROM rtc_class WHERE is_active='Y' ORDER BY rtc_id ASC");
                            if(mysqli_num_rows($get_trainees)>= 1){ 
                              while($rows2=mysqli_fetch_array($get_trainees)){
                              ?>
                        <option value="<?=$rows2['id']?>"><?=$rows2['class_name']?></option>
                      
                  <?php
                        }
                      }
                      else { ?>
                        
                        <option><b>No Entries Found</b></option>
                      
                      <?php  
                      }
                  ?>
                      </select>
                    </div>

                    <div class="col-12">
                      <label for="validationDefault04" class="form-label">Nature of Termination</label>
                      <select name="nature_termi" class="form-select" id="nature_termi" required>
                        <?php 
                    $get_trainees = mysqli_query($db,"select * FROM hatol");
                            if(mysqli_num_rows($get_trainees)>= 1){ 
                              while($rows2=mysqli_fetch_array($get_trainees)){
                                
                              ?>
                        <option value="<?=$rows2['id']?>"><?=$rows2['stat']?></option>
                      
                  <?php
                        }
                      }
                      else { ?>
                        
                        <option><b>No Entries Found</b></option>
                      
                      <?php  
                      }
                  ?>
                      </select>
                    </div>

                    <div class="col-12">
                      <label for="validationDefault04" class="form-label">RTC</label>
                      <select class="form-select" id="rtc_id" required>
                        <?php 
                    $get_trainees2 = mysqli_query($db,"select * FROM rtc");
                            if(mysqli_num_rows($get_trainees2)>= 1){ 
                              while($rows2=mysqli_fetch_array($get_trainees2)){
                              ?>
                        <option value="<?=$rows2['id']?>"><?=$rows2['rtc_name']?></option>
                      
                  <?php
                        }
                      }
                      else { ?>
                        
                        <option><b>No Entries Found</b></option>
                      
                      <?php  
                      }
                  ?>
                      </select>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="verify validationDefault04" onclick="$('#bookit').attr('disabled', !$(this).is(':checked'));" required>
                      <label class="form-check-label" for="flexCheckChecked">
                        Check this when all Details are Verified.
                      </label>
                      <div class="invalid-feedback">Please, Check this when Verified.</div>
                    </div>
                    <hr />
                    <div class="col-12">
                      <button id="submit" name="submit" class="btn btn-primary w-100" type="submit">Add New Trainee</button>
                    </div>
                    <!-- <div class="col-12">
                      <p class="small mb-0">Already have an account? <a href="pages-login.html">Log in</a></p>
                    </div> -->
                  </form>

                </div>
              </div>

              <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                Powered by <a href="https://www.facebook.com/PCGMentors">CGETDC / PCG Mentors</a>
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

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