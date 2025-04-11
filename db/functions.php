<?php
/*use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;*/
include('conn.php');


//session_start();
$data = [];

if(isset($_SESSION['email'] == "johnlouisuru@gmail.com")){

/*echo json_encode($data);
die();*/
	$get_status = mysqli_query($db,"select * from db_maintenance WHERE id='1'");
                         
                          $result3 = $get_status->fetch_assoc();  
                           $is_it = $result3['is_maintenance'];
    if($is_it == 1){
    	$update_mainte = mysqli_query($db,"UPDATE db_maintenance SET is_maintenance='0' WHERE id='1'");
    }
    else {
    	$update_mainte = mysqli_query($db,"UPDATE db_maintenance SET is_maintenance='1' WHERE id='1'");
    }

	if($update_mainte){
    	$data['message'] = 'Successfully Changed!'; 
    }
	else {
		$data['message'] = 'Error While Changing Maintenance Status';
	}
}
else {
	$data['message'] = 'You are not Logged In!';
}
echo json_encode($data);
?>
