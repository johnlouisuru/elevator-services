<?php 
require("db/conn.php");
  ?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Add Position</title>
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
        var position = $('#position').val();
        var is_active = $('#is_active').val();
        // alert(is_active);
        // return;
      if($('#position').val() == "" && $('#position').val().length <5){
        var sel2 = $(".toast-body");
            sel2.empty();
            sel2.append("<p class='alert alert-danger'>Position Title Must Not Be Empty or Less than 5 Characters.</p>");
              $('.toast').toast('show');
      }
      else if(is_active != 'Y' && is_active != 'N'){
        var sel2 = $(".toast-body");
            sel2.empty();
            sel2.append("<p class='alert alert-danger'>Altering the Status wont affect.</p>");
              $('.toast').toast('show');
      }
      else {
      //alert();
      //return;
          if (confirm("Detail Confirmation: "+$('#position').val()+" ?") == true) {
            $('.modal').show();
              
              //var email = $('#email').val();
             var wholePost =  $("#form :input").serializeArray();
            //  var formData = {
            //     'data' : wholePost
            //     //   is_active_ : is_active,
            //     //   position_ : position
            //     };
                /*alert("til dito");
              return;*/
              $.ajax({
                  type: "POST",
                  url: "process_register_position.php",
                  data: wholePost,
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
            <div class="col-lg-12 col-md-12 d-flex flex-column align-items-center justify-content-center">

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
                    <h5 class="card-title text-center pb-0 fs-4">Add Position</h5>
                    <p class="text-center small">Input all Position's Details</p>
                  </div>

                  <form id='form' class="row g-12 needs-validation" novalidate>
                    
                    <div class="col-12">
                      <label for="yourName" class="form-label">Position Title</label>
                      <input type="text" name="position" class="form-control" id="position" placeholder="Enter Position Title" required>
                      <div class="invalid-feedback">Please, enter Position Title!</div>
                    </div>

                    <div class="col-12">
                      <label for="validationDefault04" class="form-label">Status</label>
                      <select class="form-select" name="is_active" id="is_active">
                        <option value='Y'>Active</option>
                        <option value='N'>Inactive</option>
                      </select>
                    </div>
                    <div class="col-12">
                    <hr />
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
                      <input type='submit' id="submit" name="submit" class="btn btn-primary w-100" value='Add New Position'>
                    </div>
                    <!-- <div class="col-12">
                      <p class="small mb-0">Already have an account? <a href="pages-login.html">Log in</a></p>
                    </div> -->
                  </form>

                </div>
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