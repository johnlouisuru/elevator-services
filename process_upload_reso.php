<?php 

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require("db/conn.php");
/*if(!@$_SESSION['office']){
	header('Location: login.php');
  die();
}*/
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <?php
    require('head.php');
  ?>
</head>

<body class='toggle-sidebar'>

  <main id="main" class="main">

<?php 
if(isset($_POST['submit'])){
  //echo "Aym Fayn!";
	$tobe_uploaded = '';
// If so, then i have to set the uploads path.
$folder = "resolution/";
$target_file = $folder . basename($_FILES["fileName"]["name"]);
// The $_FILES variable holds a multidimensional array.
// That means that each image property is an array.
// In order to store the images in our folder, i need
// the image name, and the temporary stored location.
$names = $_FILES['fileName']['name']; // The $names variable will hold an array
// of the images names;

$tmp_names = $_FILES['fileName']['tmp_name']; // And the $tmp_names holds
$imageFileType = strtolower(pathinfo($folder.basename($names),PATHINFO_EXTENSION));
//echo $imageFileType."<br />";
if($imageFileType != "docx" && $imageFileType != "docs" && $imageFileType != "pdf" && $imageFileType != "docm" && $imageFileType != "doc"){
   echo "<div class='alert alert-danger'><span class='bi bi-x'></span> The File Format you are uploading is : .<b>$imageFileType</b><br />Sorry, This is Not Allowed. </div><div class='alert alert-success'><span class='bi bi-check'></span> Allowed File Type Are: <b>[docs, docx, pdf, docm, doc]</b> Only</div><br> ";
}
else {
  /*$upload_data = array_combine($tmp_names, $names);
        $tobe_uploaded = $folder.$x3.$file;*/
        if (file_exists('resolution/'.$names)) {
            //mkdir('orders', 0777, true);
          echo "<div class='alert alert-danger'><span class='bi bi-patch-question'></span> Your File <b>$names</b> Already Exist!</div>";
          //die();
        }
        else {
            move_uploaded_file($tmp_names, $target_file);
            $query2 = mysqli_query($db,"INSERT INTO resolution(orig_name,tmp_name,remarks)
                                          VALUES('$names','$tmp_names','')");
            if($query2){
              echo "<div class='alert alert-success'><span class='bi bi-check'></span> Your File <b>$names</b> Successfully Uploaded.</div>";
              //header("Location: https://www.madasikinara.com/owlsystem/localuploads.php?orig_name=$names&tmp_name=$tmp_names");
              //die();
              include('emailing.php');
              $message_holder = 'New File '.$names.' Successfully Uploaded';
              emailing($message_holder);
              ?>
              
              <?php
            }
            else {
              echo "<div class='alert alert-danger'><span class='bi bi-check'></span> Your File <b>$names</b> Encountered an Error.</div>";
            }
          }
    }
}
else {

}
?>
<a href="upload_reso.php" type="button" class="btn btn-primary bi bi-arrow-left"> Back</a>
</main>

</body>
</html>
