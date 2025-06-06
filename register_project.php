<?php 
require("db/conn.php");
  ?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Add New Project</title>
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
      if($('#name').val() == "" && $('#description').val().length <5){
        var sel2 = $(".toast-body");
            sel2.empty();
            sel2.append("<p class='alert alert-danger'>Project Title or Description Must Not Be Empty or Less than 5 Characters.</p>");
              $('.toast').toast('show');
      }
      else {
      //alert();
      //return;
          if (confirm("Detail Confirmation: "+$('#name').val()+" ?") == true) {
            $('.modal').show();
              var name = $('#name').val();
              var description = $('#description').val();
              var budget = $('#budget').val();
              var teamleader = $('#teamleader').val();
              var location = $('#location').val();
              //var date_started = $('#date_start').val();
              //var date_end = $('#date_end').val();
              
             var formData = {
                  name_ : name,
                  description_ : description,
                  budget_ : budget,
                  teamleader_ : teamleader,
                  location_ : location
                  //date_started_ : date_started,
                  //date_end_ : date_end
                };
                /*alert("til dito");
              return;*/
              $.ajax({
                  type: "POST",
                  url: "process_register_project.php",
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
            <div class="col-lg-9 col-md-9 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="home.php" class="logo d-flex align-items-center w-auto">
                  <img src="assets/img/logo.png" alt="">
                  <span class="d-none d-lg-block">🔙 Dashboard</span>
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

              <div class="card mb-12">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Add Project</h5>
                    <p class="text-center small">Input all Project's Details</p>
                  </div>

                  <form class="row g-3 needs-validation" novalidate>
                    
                    

                    <div class="col-12">
                      <label for="yourName" class="form-label">Project Title</label>
                      <input type="text" name="name" class="form-control" id="name" placeholder="Project Title..." required>
                      <div class="invalid-feedback">Please, enter Title!</div>
                    </div>

                    

                    <div class="col-12">
                      <label for="yourName" class="form-label">Project Description</label>
                      <textarea name="description" class="form-control" id="description" placeholder="Project Description..." required></textarea>
                      <!-- <input type="text" name="remarks" class="form-control" id="remarks" placeholder="Remarks" required> -->
                      <div class="invalid-feedback">Please, Enter Description</div>
                    </div>

                    <div class="col-12">
                      <label for="yourName" class="form-label">Project Budget</label>
                      <input type="number" name="budget" class="form-control" id="budget" placeholder="Project Budget..." required>
                      <div class="invalid-feedback">Please, enter Budget!</div>
                    </div>

                    <div class="col-12">
                      <label for="yourName" class="form-label">Project Location/Address</label>
                      <textarea name="location" class="form-control" id="location" placeholder="Project location..." required></textarea>
                      <!-- <input type="text" name="remarks" class="form-control" id="remarks" placeholder="Remarks" required> -->
                      <div class="invalid-feedback">Please, Enter location</div>
                    </div>

                    <div class="col-12">
                      <label for="validationDefault04" class="form-label">Select Team Leader</label>
                      <select class="form-select" name="teamleader" id="teamleader" required>
                        <option value="0" disabled selected>Select Team Leader</option>
                        <?php 
                    $get_trainees = mysqli_query($db,"select * FROM users");
                            if(mysqli_num_rows($get_trainees)>= 1){ 
                              while($rows2=mysqli_fetch_array($get_trainees)){
                              ?>
                        <option value="<?=$rows2['id']?>"><?=$rows2['fullname']?></option>
                      
                  <?php
                        }
                      }
                      else { ?>
                        
                        <option disabled><b>No User Found</b></option>
                      
                      <?php  
                      }
                  ?>
                      </select>
                    </div>


                    <!-- <div class="col-12">
                      <label for="yourName" class="form-label">Date Start</label>
                      <input type="date" name="date_started" class="form-control" id="date_started" placeholder="Project Budget...">
                      <div class="invalid-feedback">Please, enter Budget!</div>
                    </div>

                    <div class="col-12">
                      <label for="yourName" class="form-label">Date End</label>
                      <input type="date" name="date_end" class="form-control" id="date_end" placeholder="Project Budget...">
                      <div class="invalid-feedback">Please, enter Budget!</div>
                    </div> -->


                    

                    
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="verify validationDefault04" onclick="$('#bookit').attr('disabled', !$(this).is(':checked'));" required>
                      <label class="form-check-label" for="flexCheckChecked">
                        Check this when all Details are Verified.
                      </label>
                      <div class="invalid-feedback">Please, Check this when Verified.</div>
                    </div>
                    <hr />
                    <div class="col-12">
                      <button id="submit" name="submit" class="btn btn-primary w-100" type="submit">Add New Project</button>
                    </div>
                    <!-- <div class="col-12">
                      <p class="small mb-0">Already have an account? <a href="pages-login.html">Log in</a></p>
                    </div> -->
                  </form>

                </div>
              </div>

             
            </div>

            <div class="col-lg-3 col-md-3 d-flex flex-column justify-content-center">
              <?php 
                $get_project = mysqli_query($db,"select * from project WHERE is_finished != 1");
                if(mysqli_num_rows($get_project)>= 1){ ?>
                <div class="card mb-12  w-auto p-1">

                <div class="card-body">
                  <div class="pt-12 pb-12">
                  <h4 class="card-title text-center pb-0 fs-4">List of Projects (<?=mysqli_num_rows($get_project)?>)</h4>
                  <div class="col-md-12">
                      <table>
                        <tr>
                          <th>Project Title</th>
                        </tr>
                    <?php 
                    $loop = 1;
                      while($rows2 = mysqli_fetch_assoc($get_project)){
                        ?>
                            <tr>
                              <td>[<?=$loop?>] <?=$rows2['name']?></td>
                            </tr>
                        <?php
                        $loop++;
                      }
                      ?>
                  </table>
                    </div>
                  </div>
                  </div>
                  </div>
                  <?php
                }
                
              ?>
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