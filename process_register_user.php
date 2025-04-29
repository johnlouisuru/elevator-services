<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
include('db/conn.php');

//session_start();
$data = [];
function generatePassword($length = 6) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    return substr(str_shuffle(str_repeat($characters, ceil($length / strlen($characters)))), 0, $length);
  }
  
$password_holder = generatePassword();
$passwordHash = password_hash($password_holder, PASSWORD_DEFAULT);
$unhashedPassword = $password_holder;
/*echo json_encode($data);
die();*/
$email = $_POST["email_"];
if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
  $emailErr = "Invalid email format";
  $data['message'] = 'Invalid Email Format';
  die();
}

  if(filter_var($email, FILTER_VALIDATE_EMAIL)){
    $stmt = $db->prepare("INSERT INTO users (fullname,position,email,password) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $_POST['fullname_'], $_POST['position_'], $email, $passwordHash);

    // $query2 = mysqli_query($db,"INSERT INTO users(fullname,position,email,password)
    //                           VALUES('$_POST[fullname_]','$_POST[position_]','$email','$passwordHash')");
    if($stmt->execute()){
      /*$q_logs = mysqli_query($db,"INSERT INTO logs(activity,tid,remarks,old_status,new_status)
                                            VALUES('Changed from <i> $x5 </i> to <i> $x4 </i>','$_POST[tid]','Trainee`s Case Status Update.','$x3','$_POST[cid]')");*/

      #GENERATING EMAIL NOTIFICATION
      $data['message'] = '<p class="alert alert-success">New User : <b>'.$_POST['fullname_'].'</b> Successfully Added!</p>';
      include('emailing.php');
      $message_holder = 'Hi! '.$email.', Your Password is : <br><b><i>'.$unhashedPassword.'</i></b><br> You may now Login your account using this Email Address.';
      emailing($message_holder, $email);                   
      #GENERATING EMAIL NOTIFICATION ENDDDD
        
    }
    else {
      $data['message'] = '<p class="alert alert-danger">Error 404: Please Contact your Developer.</p>';

    }
    //$data['message'] = '<p class="alert alert-success">'.$_POST['rank_'].' '.$_POST['fullname_'].' Successfully Added</p>'; 
  }
  else {
    $data['message'] = '<p class="alert alert-danger">Error: Invalid Email Address</p>';
    echo json_encode($data);
    die();
  }	
echo json_encode($data);
?>