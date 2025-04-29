<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
include('db/conn.php');

//session_start();
//$data = [];
// echo '<pre>'; 
// echo $_POST['position'];
// echo '<br/>'.$_POST['is_active'];
// echo '</pre>';
// die();
//echo $_POST['position'];
// $x = $_POST;
// foreach($x as $y){
//   echo $y;
// }
//print_r($_POST);
//echo mysqli_real_escape_string($db, $_POST['position']);
//echo $_POST['position'];
//var_dump($_POST);

//die();
if(isset($_POST['position'])){

    // $query2 = mysqli_query($db,"INSERT INTO `position`(`roles`, `is_active`)
    //                           VALUES('$_POST[position_]', '$_POST[is_active_]')");
    
    $stmt = $db->prepare("INSERT INTO position (roles, is_active) VALUES (?, ?)");
    $stmt->bind_param("ss", $_POST['position'], $_POST['is_active']);
    

    // $data['message'] = $query2;
    // echo json_encode($data);
    // die();  
    if($stmt->execute()){
      /*$q_logs = mysqli_query($db,"INSERT INTO logs(activity,tid,remarks,old_status,new_status)
                                            VALUES('Changed from <i> $x5 </i> to <i> $x4 </i>','$_POST[tid]','Trainee`s Case Status Update.','$x3','$_POST[cid]')");*/

      #GENERATING EMAIL NOTIFICATION
      $data['message'] = '<p class="alert alert-success">New Position : <b>'.$_POST['position'].'</b> Successfully Added!</p>';
      //include('emailing.php');
      //$message_holder = 'New Trainee : '.$_POST['rank_'].'  '.$fname_holder.' Successfully Added';
      //emailing($message_holder);                   
      #GENERATING EMAIL NOTIFICATION ENDDDD
        
    }
    else {
      $data['message'] = '<p class="alert alert-danger">Error 404: Please Contact your Developer.</p>';

    }
    //$data['message'] = '<p class="alert alert-success">'.$_POST['rank_'].' '.$_POST['fullname_'].' Successfully Added</p>'; 
  
}
else {
	$data['message'] = 'Position Title must at least have 5 Characters';
}
echo json_encode($data);
?>