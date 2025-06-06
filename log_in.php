<!DOCTYPE html>
<html lang="en">

<head>
<?php 
//require('check_sess.php');
require("db/conn.php");
session_start();
if (isset($_SESSION['user_id'])) {
    // User is not logged in, redirect to login page
    header('Location: home.php');
    exit();
}
    require('head.php');
    require('fb_time_ago.php');
  ?>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CHAD ELEVATOR SYSTEM</title>

    <!-- Custom fonts for this template-->

<script src="lib/jquery.js" type="text/javascript"></script>

<script src="js/lc_lightbox.lite.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/lc_lightbox.css" />


<!-- SKINS -->
<link rel="stylesheet" href="skins/minimal.css" />


<!-- ASSETS -->
<script src="lib/AlloyFinger/alloy_finger.min.js" type="text/javascript"></script>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
					
                        <!-- Nested Row within Card Body -->
                        <div class="row">
						
						<img src='assets/img/chad.png' class='col-lg-6 d-lg-block'>
                            <!--<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>-->
                            <div class="col-lg-6">
							
                                <div class="p-5">

                                    <div class="text-center">
										<h1 class="h3 mb-0 text-center text-gray-800">CHAD ELEVATOR SYSTEM</h1>
										<hr />
										
                                    </div>
                                    <form class="user" method="POST" action='login_auth.php'>
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="exampleInputEmail" name='email' aria-describedby="emailHelp"
                                                placeholder="Enter Authorized Email">
                                        </div><br>
                                        <div class="form-group">
                                            <input type="password" name='password' class="form-control form-control-user"
                                                id="exampleInputPassword" placeholder="Enter Password">
                                        </div><br>
                                        <input type='submit' name='submit' class="btn btn-primary btn-user btn-block col-md-12" value='LOGIN'>
                                            
                                        <!-- <hr>
                                        <a href="#l" class="btn btn-google btn-user btn-block">
                                            <i class="fab fa-google fa-fw"></i> Login with Google
                                        </a>
                                        <a href="#" class="btn btn-facebook btn-user btn-block">
                                            <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                                        </a>
										-->
                                    </form>
                                    <hr>
                                    <?php 

                                        if(@$_SESSION['error']){
                                            echo '<p class="text text-bg-danger text-center">'.$_SESSION['error'].'</p>';
                                        }
                                    ?>
                                    <!-- <div class="text-center">
                                        <a href="../attendance/Lecture/takeAttendance.php"><i class="bi bi-person-bounding-box"> &nbsp Login Using Face Recognition</i></a>
                                    </div>
                                    <div class="text-center">
                                        <a href="../qr/"><i class="bi bi-qr-code"> &nbsp Login Using QR Code</i></a>
                                    </div>
                                    <div class="text-center">
                                        <a  href="#"><i class="bi bi-person-plus"></i> Create an Account!</a>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    <?php
   // require('links/footer-js.php');
  ?>

</body>

</html>