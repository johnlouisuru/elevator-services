<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
include('db/conn.php');

//session_start();
$data = [];

if($_POST['cname_'] != "" && strlen($_POST['cname_']) > 4){

/*echo json_encode($data);
die();*/

	$query2 = mysqli_query($db,"INSERT INTO rtc_class(class_name,rtc_id,is_active,total)
                            VALUES('$_POST[cname_]','$_POST[rtc_id_]','Y','$_POST[total_]')");
	if($query2){
    $data['message'] = '<p class="alert alert-success">New Class : '.$_POST['cname_'].' Successfully Added</p>'; 

    $q_logs = mysqli_query($db,"INSERT INTO logs(activity)
                                          VALUES('New Class Name Added $_POST[cname_]')");
    if($q_logs){
       $data['message'] = '<p class="alert alert-success">New Class : '.$_POST['cname_'].' Successfully Added (w/Logs)</p>'; 
    }
			include('emailing.php');
    $message_holder = 'New Class Name  '.$_POST['cname_'].' Successfully Added';
    emailing($message_holder);
	}
	else {
		$data['message'] = '<p class="alert alert-danger">Error 404: Please Contact your Handsome Developer.</p>';

	}
	//$data['message'] = '<p class="alert alert-success">'.$_POST['rank_'].' '.$_POST['fullname_'].' Successfully Added</p>'; 
    
}
else {
	$data['message'] = '<p class="alert alert-danger">Class Name must at least have 5 Characters*</p>';
}
echo json_encode($data);
?>