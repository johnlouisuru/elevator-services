<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
include('db/conn.php');

//session_start();
$data = [];

if($_POST['fullname_'] != "" && strlen($_POST['fullname_']) > 4){

/*echo json_encode($data);
die();*/
$fname_holder = '';
if($_POST['rank_'] == "CCGNO"){
  $fname_holder = strtoupper($_POST['fullname_']);
}
else {
  $fname_holder = strtoupper($_POST['fullname_']);
}
	$query2 = mysqli_query($db,"INSERT INTO list(fullname,rank,age,class,rtc,nature_termi,year,acadsess,reso,so,remarks)
                            VALUES('$fname_holder','$_POST[rank_]','$_POST[age_]','$_POST[class_id_]','$_POST[rtc_id_]','$_POST[nature_termi_]','".date("Y")."','$_POST[acadsess_]','$_POST[reso_]','$_POST[so_]','$_POST[remarks_]')");
	if($query2){
    /*$q_logs = mysqli_query($db,"INSERT INTO logs(activity,tid,remarks,old_status,new_status)
                                          VALUES('Changed from <i> $x5 </i> to <i> $x4 </i>','$_POST[tid]','Trainee`s Case Status Update.','$x3','$_POST[cid]')");*/

		#GENERATING EMAIL NOTIFICATION
    $data['message'] = '<p class="alert alert-success">New Trainee : '.$_POST['rank_'].'  '.$fname_holder.' Successfully Added (w/Logs)</p>';
    include('emailing.php');
    $message_holder = 'New Trainee : '.$_POST['rank_'].'  '.$fname_holder.' Successfully Added';
    emailing($message_holder);                   
    #GENERATING EMAIL NOTIFICATION ENDDDD
			
	}
	else {
		$data['message'] = '<p class="alert alert-danger">Error 404: Please Contact your Handsome Developer.</p>';

	}
	//$data['message'] = '<p class="alert alert-success">'.$_POST['rank_'].' '.$_POST['fullname_'].' Successfully Added</p>'; 
}
else {
	$data['message'] = '<p class="alert alert-danger">Full Name must at least have 5 Characters and Age is required*</p>';
}
echo json_encode($data);
?>