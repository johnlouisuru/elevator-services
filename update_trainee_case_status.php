<?php
date_default_timezone_set('Asia/Manila');
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
include('db/conn.php');
//session_start();
$data = [];
$data['message'] = 'Umabot ka sa Processing ng AJAX';
//echo json_encode($data);
if(empty($_POST['tid']) || empty($_POST['cid'])){
	$data['message'] = 'Something went wrong here...';
}
else {
	$get_old_status = mysqli_query($db,"select * from list WHERE id='".$_POST['tid']."'");
                         
                          $result3 = $get_old_status->fetch_assoc();  
                           $rank = $result3['rank'];
                          $x3 = $result3['nature_termi'];
                          $xname = $result3['fullname'];
    if($x3 == $_POST['cid']){
    	$data['message'] = 'NO CHANGES. The Status you are requesting is the same as the recent. ';
    }
    else {
    $get_status = mysqli_query($db,"select * from hatol WHERE id='".$_POST['cid']."'");
                          $result4 = $get_status->fetch_assoc();  
                          $x4 = $result4['stat'];

     $get_prev_status = mysqli_query($db,"select * from hatol WHERE id='".$x3."'");
                          $result5 = $get_prev_status->fetch_assoc();  
                          $x5 = $result5['stat'];

                          $date_today = date('Y-m-d H:i:s', time());                      
	$update_trainee = mysqli_query($db,"UPDATE list SET nature_termi='".$_POST['cid']."', date='".$date_today."' WHERE id='".$_POST['tid']."'");
		if($update_trainee){
			
			$query2 = mysqli_query($db,"INSERT INTO logs(activity,tid,remarks,old_status,new_status)
                                          VALUES('Changed from <i> $x5 </i> to <i> $x4 </i>','$_POST[tid]','Trainee`s Case Status Update.','$x3','$_POST[cid]')");
			if($query2){
				#GENERATING EMAIL NOTIFICATION
                
                      require 'phpmailer/src/Exception.php';
                      require 'phpmailer/src/PHPMailer.php';
                      require 'phpmailer/src/SMTP.php';

                        $mail = new PHPMailer(true);

                        $mail->isSMTP();
                        $mail->Host = "smtp.gmail.com"; // mail.madasikinara.com
                        $mail->SMTPAuth = true;
                        $mail->Username = "johnlouisuru@gmail.com"; //jlouisuru@gmail.com
                        $mail->Password = "lgdp gxht jftm nqyt"; //ttqm fhro jntr ozcx
                        $mail->SMTPSecure = 'ssl'; //ssl
                        $mail->Port = 465; //465
                        $mail->setFrom("johnlouisuru@gmail.com"); //jlouisuru@gmail.com

                        $mail->addAddress("jlouisuru@gmail.com"); // ito ang recipient 
                      

                          // $mail->isSMTP();
                          // $mail->Host = "mail.madasikinara.com"; //smtp.gmail.com
                          // $mail->SMTPAuth = true;
                          // $mail->Username = "trainees-status-monitoring-system@madasikinara.com"; //jlouisuru@gmail.com
                          // $mail->Password = "aLouIe@0@3"; //ttqm fhro jntr ozcx
                          // $mail->SMTPSecure = 'ssl'; //ssl
                          // $mail->Port = 465; //465
                          // $mail->setFrom("trainees-status-monitoring-system@madasikinara.com"); //jlouisuru@gmail.com

                          // $mail->addAddress("johnlouisuru@gmail.com"); // ito ang recipient 
                        
                          #THIS IS FOR LOCAL VERSION

                        $mail->isHTML(true);

                        $mail->Subject = "CGETDC TRAINEE`S STATUS MONITORING SYSTEM: $xname Changed Termination Status.";
                        $mail->Body = "
                        
                        <p><i>$xname</i> has been changed its Status from <i>$x5</i> to <b><u>$x4</u></b> as of (".date("d-M-Y Hi")."H).
                        <br /> 
                        </p>
                        <hr />
                        <br />
                        <table border='1'>
                          <tr>
                            <td colspan='4'><center><img src='https://pbs.twimg.com/profile_images/1641853889342492674/6DYEzRMI_400x400.jpg' height='200px' width='200px'></center></td>
                          </tr>
                          <tr> 
                            <th>Rank/Fullname</th>
                            <th>Previous Status</th>
                            <th>Current Status</th>
                            <th>Date</th>
                          </tr>
                          <tr>
                            <td>$rank $xname</td>
                            <td>$x5</td>
                            <td><b>$x4</b></td>
                            <td>".date("d-M-Y Hi")."H</td>
                          </tr>
                        </table>
                        <hr />
                        <p>
                        This is an Automatic E-mail generated by the Trainees' Status Monitoring System. <br />
                        If you are not the concerned party of this E-mail, please Ignore.
                        <br />
                        Refrain from Replying. Thank you.
                        </p>
                        <a href='#'>
                        Click here to check the file. 
                        </a>
                        ";

                        /*$data['message'] = $mail->ErrorInfo;
                        echo json_encode($data);
                        die();*/
                        //$data['message'] = "<p class='alert alert-success'> ".$_POST['rank_']." ".$_POST['fullname_']."Successfully Added</p>";
                        //echo json_encode($data);
                        //die();
                        //$data['message'] = "<p class='alert alert-success'> ".$_POST['rank_']." ".$_POST['fullname_']."Successfully Added</p>"; 
                        /*$data['message'] = "<p class='alert alert-success'> ".$_POST['rank_']." ".$_POST['fullname_']." Successfully Added</p>";
                        echo json_encode($data);
                        die(); */
                        if($mail->send()){  
                          $data['message'] = 'Trainee`s Case Successfully Updated to : <b>'.$x4.'</b>';
                           
                        }
                        else {
                          $data['message'] = '<p class="alert alert-danger">Error 404: Please Contact your Handsome Developer.</p>';
                          
                        }

                #GENERATING EMAIL NOTIFICATION ENDDDD
				
			}
			else {
				$data['message'] = 'Trainee`s Case Successfully Updated to <b>'.$x4.'</b>, But Not The Activity Logs ';
			}
		}
		else {
			$data['message'] = 'Error while updating Trainee`s Case. Please Contact Your Handsome Admin Yuru';
		}
		//$data['message'] = 'You are there!!!';
	}
}
echo json_encode($data);
?>