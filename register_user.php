<?php 
require("db/conn.php");
  ?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Add User</title>
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
    const validateEmail = (email) => {
    return email.match(
        /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
      );
    };
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
      const email_add = $('#email').val();
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
      else if(!validateEmail(email_add)){
        var sel2 = $(".toast-body");
            sel2.empty();
            sel2.append("<p class='alert alert-danger'>Invalid Email</p>");
              $('.toast').toast('show');
              
      }
      else {
      //alert();
      //return;
          if (confirm("Detail Confirmation: "+$('#fullname').val()+" ?") == true) {
            $('.modal').show();
              var fullname = $('#fullname').val();
              var position = $('#position').val();
              //var email = $('#email').val();
              
             var formData = {
                  fullname_ : fullname,
                  position_ : position,
                  email_ : email_add
                };
                /*alert("til dito");
              return;*/
              $.ajax({
                  type: "POST",
                  url: "process_register_user.php",
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
                    <h5 class="card-title text-center pb-0 fs-4">Add User</h5>
                    <p class="text-center small">Input all User's Details</p>
                  </div>

                  <form class="row g-12 needs-validation" novalidate>
                    
                    <div class="col-12">
                      <label for="yourName" class="form-label">Full Name</label>
                      <input type="text" name="fullname" class="form-control" id="fullname" placeholder="First Name M.I Lastname" required>
                      <div class="invalid-feedback">Please, enter Name!</div>
                    </div>

                    <div class="col-12">
                      <label for="validationDefault04" class="form-label">Position Assigned</label>
                      <select class="form-select" name="position" id="position" required>
                        <?php 
                          $get_position = mysqli_query($db,"select * FROM position WHERE is_active ='Y'");
                                  if(mysqli_num_rows($get_position)>= 1){ 
                                    while($row_pos=mysqli_fetch_array($get_position)){
                                    ?>
                                      <option value="<?=$row_pos['id']?>"><?=$row_pos['roles']?></option>
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
                      <label for="yourName" class="form-label">Email Address</label>
                      <input type="text" name="email" class="form-control" id="email" placeholder="Enter @Email...">
                      <div class="invalid-feedback">Please, enter Email!</div>
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
                      <button id="submit" name="submit" class="btn btn-primary w-100">Add New User</button>
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