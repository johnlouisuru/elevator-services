<?php

include('db/conn.php');
//session_start();
$data = [];
$row_holder = '';

if(empty($_POST['cgid'])){
	$data['message'] = 'Something went wrong here...';
}
else {
  
  $row_holder = '
    <table class="table table-bordered">
    <thead>
      <tr><th colspan="4">'.$_POST['cgd'].'</th></tr>
                      <tr>
                        <th scope="col">Station</th>
                        <th scope="col">Address</th>
                        <th scope="col">E-mail</th>
                        <th scope="col">Contact #</th>
                      </tr>
                    </thead>
  ';
  //$data['message'] = 'Umabot ka sa Processing ng AJAX';
//echo json_encode($data);
//return;
	$get_stations = mysqli_query($db,"select * from cg_station WHERE district_id='".$_POST['cgid']."'");
  
                 if(mysqli_num_rows($get_stations)>= 1){ 
                    while($rows2=mysqli_fetch_array($get_stations)){  
                      $row_holder .= "<td>".$rows2['station']."</td>
                                      <td>".$rows2['address']."</td>
                                      <td>".$rows2['email']."</td>
                                      <td>".$rows2['contact']."</td></tr>";
                    }
                  }
                  $row_holder .= "</table>";
                  //$data['message'] = $row_holder;
                  //echo json_encode($data);
                  //return;
                  $data['message'] = $row_holder;     
                          
   
                        
	
		
		//$data['message'] = 'You are there!!!';
	}
echo json_encode($data);
?>