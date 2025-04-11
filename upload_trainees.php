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

              <div class="card mb-12">

                <div class="card-body">

                  <div class="pt-6 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Add Trainee</h5>
                    <p class="text-center small">Trainees' Details</p>
                  </div>

                  

                  <form class="form-control" action="upload_trainees.php" method="post" enctype="multipart/form-data">
			<br>Note: Excel File Extensions [<b>.xls, .xlsx, .xlsm, .xltx</b>] allowed 2 columns Containing Rank and Fullname. <hr />
           
            <div class="col-12">
                      <label for="validationDefault04" class="form-label">CLASS</label>
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
                      <label for="validationDefault04" class="form-label">RTC</label>
                      <select class="form-select" name='rtc' id="rtc_id" required>
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
                    <hr />
            
			<input type="file" name="excel" required value="">
			<button type="submit" name="import" style="background-color: lightblue; width: 25%; font-size:20px;">Import 📁</button>
		</form>
		<hr/>
		<p><?=@$_SESSION['message']?><br>
		<?php $_SESSION['message']='';?>
		</p>	

    <h4><I>Example content of Excel file to be uploaded.</I></h4>
            <table class='table table-border' border = 1 style='width:100%;'>
                <tr>
                    <th>Rank</th>
                    <th>Fullname</th>
                </tr>
                <tr>
                    <td>CCGNO</td>
                    <td>Juan Dela Cruz</td>
                </tr>
            </table>
			<hr />
		
		<?php
		if(isset($_POST["import"])){
      $class = $_POST['class'];
      $rtc = $_POST['rtc'];
			$_SESSION['message'] = '';
			$fileName = $_FILES["excel"]["name"];
			$fileExtension = explode('.', $fileName);
      $fileExtension = strtolower(end($fileExtension));
			$newFileName = $fileName."-".date("Y.m.d") . " - " . date("h.i.sa") . "." . $fileExtension;

			$targetDirectory = "uploads/" . $newFileName;
			move_uploaded_file($_FILES['excel']['tmp_name'], $targetDirectory);

			error_reporting(0);
			ini_set('display_errors', 0);   
			require 'excelReader/excel_reader2.php';
			require 'excelReader/SpreadsheetReader.php';

			$reader = new SpreadsheetReader($targetDirectory);
			$loop = 0;
			$list = 1;
      $skipped = 1;
			$message = '';
			foreach($reader as $key => $row){
				$rank = $row[0];
        $fullname = strtoupper($row[1]);
        //echo $rank ." XXX ".$fullname;
				$name_holder = strlen($fullname);
				if($fullname != 'FULLNAME' || $rank != 'rank'){
					//echo strlen($lrn)." From == 12 <br>";
					$check_existing_lrn = mysqli_query($db,"SELECT * FROM list WHERE fullname ='".$fullname."'");
					if(mysqli_num_rows($check_existing_lrn) >= 1){
						$_SESSION['message'] .= "<span style='color:red'>$skipped Oops: This ".$fullname. " , already exist. [SKIPPED] </span><br>";
            $skipped++;
					}
					else {
							mysqli_query($db, "INSERT INTO list (rank,fullname,class,rtc,nature_termi) VALUES('$rank','$fullname','$class','$rtc','0')");
						$loop++;
						
					}
					
				}
				else{
					//echo strlen($lrn)." From != 11 <br>";
					$_SESSION['message'] .= "<span style='color:orange'>\[".$list."]: First row not saved because this is a header column and not a trainees data.</span><br>"; 
					$list++;
					//header('Location: index.php');
					//die();
				}
				
			}
			$_SESSION['message'] .= "<span style='color:green'>[".$loop."] Record(s) saved.</span>"; 
			//header('Location: upload_lrn.php');

      echo "Total Skipped: ".$skipped." <hr />".$_SESSION['message']; 
		}
		?>
		<hr />
		<a href="dashboard.php" class="btn btn-info border">Back to Dashboard 🏠</a> <br >

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