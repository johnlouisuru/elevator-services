
<?php 
    require('head.php');
  ?>
<?php 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
  session_start();
  include_once('db/conn.php');
  
  if($_SERVER['REQUEST_METHOD'] === 'POST'){
    $email = $_POST['email'];
    $password = $_POST['password'];
    //$decoded_password;

    //echo $email .' - '.$password; 
    if(!filter_var($email, FILTER_VALIDATE_EMAIL)){ 
      echo "Invalid Email! <br />";
      die();
    } 
    
    $stmt = mysqli_query($db, "SELECT * FROM users WHERE email = '$email'");
    if(mysqli_num_rows($stmt) >= 1){
      while($valid_user = mysqli_fetch_assoc($stmt)){
        if (password_verify($password, $valid_user['password'])){
          // Password correct
          $_SESSION['user_id'] = $valid_user['id'];
          $_SESSION['fullname'] = $valid_user['fullname'];
          $_SESSION['position'] = $valid_user['position'];
          $_SESSION['email'] = $valid_user['email'];
          echo "Login successful! Welcome, " . htmlspecialchars($valid_user['fullname']) . ".";
          header('Location: home.php');
          $_SESSION['error'] = '';
      } else {
          echo "Invalid email or password.";
          header('Location: log_in.php');
          $_SESSION['error'] = 'Invalid Email or Password';
      }
      }
    }
    //echo $user['password'];
    //echo $user;
    
  }

    
?>
