<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
include('db/conn.php');


//session_start();
$data = [];

if($_POST['hatol_'] != "" && strlen($_POST['hatol_']) > 4){

/*echo json_encode($data);
die();*/

	$query2 = mysqli_query($db,"INSERT INTO hatol(stat)
                            VALUES('$_POST[hatol_]')");
	if($query2){
    $data['message'] = '<p class="alert alert-success">New Case : ['.$_POST['hatol_'].'] Successfully Added</p>'; 

    $q_logs = mysqli_query($db,"INSERT INTO logs(activity)
                                          VALUES('New Case Name Added [ $_POST[hatol_] ]')");
    if($q_logs){
       $data['message'] = '<p class="alert alert-success">New Case : ['.$_POST['hatol_'].'] Successfully Added (w/Logs)</p>'; 
    }
    include('emailing.php');
    $message_holder = 'New Case ['.$_POST['hatol_'].'] Successfully Added';
    emailing($message_holder);
			
	}
	else {
		$data['message'] = '<p class="alert alert-danger">Error 404: Please Contact your Handsome Developer.</p>';

	}
	//$data['message'] = '<p class="alert alert-success">'.$_POST['rank_'].' '.$_POST['fullname_'].' Successfully Added</p>'; 
    
}
else {
	$data['message'] = '<p class="alert alert-danger">Case Name must at least have 5 Characters*</p>';
}
echo json_encode($data);
?>