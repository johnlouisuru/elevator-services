<html>  
<head>
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 


</head>
<body>
<?php 
    require('head.php');
  ?>
<?php 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
  session_start();
  include_once('db/conn.php');
  include('emailing.php');
  /*if(!empty(@$_GET['face_recog'])){
    if($_GET['face_recog'] == "T11wcei$"){
    $email = "johnlouisuru@gmail.com";
    
      $message_holder = "Using FACIAL RECOGNITION -> New Logged in: ".$email;
      emailing($message_holder);
      ?>

      <script>
    $(document).ready(function() {
      $('.modal').show(); 
      event.preventDefault();
    });
  </script>
      <!-- Toast with Placements -->

            <div class="modal" id="myModal" tabindex="-1" style="position: fixed; top: 25%;">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">DETECTED AUTHORIZED ACCOUNT!</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <p>Please wait...</p>
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
      <?php
      //echo "Correct";
      
        $_SESSION['email'] = $email;
        $_SESSION['user_id'] = 1;
        $_SESSION['office'] = "CGETDC Admin";
        $_SESSION['loggedin_time'] = time();
        //$_SESSION['is_admin'] = $rows['is_admin'];
        //header("Location: log_in.php");
        echo "<meta http-equiv=\"refresh\" content=\"1;url=dashboard.php\"/>";
      }

      
  }*/
  if(isset($_POST['submitter'])){ 
    $email = $_POST['email'];
    $password = hash('sha256',$_POST['password']);
    $check_auth = mysqli_query($db,"select * from accounts WHERE email='$email' AND password='$password' LIMIT 1");
    if(mysqli_num_rows($check_auth) >= 1){
      $message_holder = "Using Email and Passcode -> New Logged in: ".$email;
      emailing($message_holder);
      ?>

      <script>
    $(document).ready(function() {
      $('.modal').show(); 
      event.preventDefault();
    });
  </script>
      <!-- Toast with Placements -->

            <div class="modal" id="myModal" tabindex="-1" style="position: fixed; top: 25%;">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Please wait while Logging you in...</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <p>Please wait...</p>
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
      <?php
      //echo "Correct";
      while($rows=mysqli_fetch_array($check_auth)){
        $_SESSION['email'] = $rows['email'];
        $_SESSION['user_id'] = $rows['id'];
        $_SESSION['office'] = $rows['office'];
        $_SESSION['loggedin_time'] = time();
        //$_SESSION['is_admin'] = $rows['is_admin'];
        //header("Location: log_in.php");
        echo "<meta http-equiv=\"refresh\" content=\"1;url=dashboard.php\"/>";

      }
    }
    else { ?>
      <script>
        $(document).ready(function() {
          $('.modal').show(); 
          event.preventDefault();
        });
      </script>
      <!-- Toast with Placements -->

            <div class="modal" id="myModal" tabindex="-1" style="position: fixed; top: 25%;">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Incorrect Email or Password!</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <p>Try Contacting your Administrator.</p>
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
    <?php
    echo "<meta http-equiv=\"refresh\" content=\"1;url=log_in.php\"/>";
    }
  }
  //$logs = 'logged in';
 else if(isset($_POST['submit'])){
    $username = $_POST['email'];
    $password = $_POST['password'];
    $query = "select * from rtc WHERE uname='$username' AND pword='$password' LIMIT 1";
    $authen = mysqli_query($db,$query);
    if(mysqli_num_rows($authen)>=1){
      while($rows=mysqli_fetch_array($authen)){
        $fullname = $rows['rtc_name'];
        //$rank = $rows['rank'];
        $rtc_id = $rows['id'];
        $rtc_logo = $rows['logo'];
        $rtc_short = $rows['rtc_short'];
        $rtc_dir = $rows['rtc_dir'];
        
      }
      $_SESSION["rtc_name"] = $fullname;
      //$_SESSION["rank"] = $rank;
      $_SESSION["rtc_id"] = $rtc_id;
      
      $_SESSION["rtc_short"] = $rtc_short;
      $_SESSION["rtc_dir"] = $rtc_dir;
      //require('activity_logs.php');
      echo "WELCOME ".$_SESSION['rtc_name'];
      if($username == "cgetdc"){
        $_SESSION["rtc_logo"] = "assets/img/".$rtc_logo;
        echo "<meta http-equiv=\"refresh\" content=\"1;url=dashboard.php\"/>";
      }
      else {
        $_SESSION["rtc_logo"] = "rtcs/".$rtc_logo;
        echo "<meta http-equiv=\"refresh\" content=\"1;url=index.php\"/>";
      }
      
    }
    else {
      echo "Incorrect Username or Password!";
      //echo "ERROR: Could not able to execute $query. " . mysqli_error($db);
     // echo "<meta http-equiv=\"refresh\" content=\"1;url=login.php\"/>";
    }
    //phpinfo();
  }
  //include('emailing.php');
    $message_holder = 'Account with Username: '.$username.' Logged in';
    emailing($message_holder);
  echo "Account Successfully LOGGED IN!";
  echo "<meta http-equiv=\"refresh\" content=\"1;url=dashboard.php\"/>";
?>

              
<hr />
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