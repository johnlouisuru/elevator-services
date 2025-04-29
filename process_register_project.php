<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
include('db/conn.php');

//session_start();
$data = [];

if($_POST['name_'] != "" && strlen($_POST['name_']) > 4){

/*echo json_encode($data);
die();*/
$fname_holder = '';
  if($_POST['teamleader_'] != null || $_POST['teamleader_'] >= 1){
    $stmt = $db->prepare("INSERT INTO project(name,budget,description,teamleader_id,location) VALUES (?,?,?,?,?)");
    $stmt->bind_param("sssss", $_POST['name_'],$_POST['budget_'],$_POST['description_'],$_POST['teamleader_'],$_POST['location_']);
    if($stmt->execute()){
      $last_id = mysqli_insert_id($db);
      //$last_id = $db->lastInsertId();
      //echo $last_id;
      $project = $db->prepare("INSERT INTO project_leadership(project_id, teamleader_id) VALUES (?,?)");
      $project->bind_param("ss", $last_id, $_POST['teamleader_']);
      // $project = mysqli_query($db,"INSERT INTO project_leadership(project_id, teamleader_id))
      //                                          VALUES('25','$_POST[teamleader_]')");
                                               //echo $project;
                                               //die();
      if($project->execute()){
        $data['message'] = '<p class="alert alert-success">New Project : <b>'.$_POST['name_'].'</b> Successfully Added! *</p>';  
      }
      else {
        $data['message'] = '<p class="alert alert-success">Only Project : <b>'.$_POST['name_'].'</b> Successfully Added, not Project Leadership</p>'; 
      }
      
    }
    else {
      $data['message'] = '<p class="alert alert-danger">Error 404: Please Contact your Developer.</p>';

    }
    //$data['message'] = '<p class="alert alert-success">'.$_POST['rank_'].' '.$_POST['fullname_'].' Successfully Added</p>'; 
  }
  else {
    $data['message'] = '<p class="alert alert-danger">Error 404:Something wrong with Team Leader Assigned</p>';
    echo json_encode($data);
    die();
  }	
}
else {
	$data['message'] = '<p class="alert alert-danger">Project Title must at least have 5 Characters</p>';
}
echo json_encode($data);
?>