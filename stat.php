<!DOCTYPE html>
<html lang="en">

<?php 
require('check_sess.php');
require("db/conn.php");
$remarks = "";
if(@$_GET['stat'] != ''){
$remarks = $_GET['stat'];
}
else {
  $remarks = "hehehe";
}


    require('head.php');
  ?>

<body>

  <?php 
    require('header.php');
  ?>

  <?php 
    require('sidebar.php');
  ?>



  <!-- BODY CONTENT -->
  <main id="main" class="toggle-sidebar">

    <div class="pagetitle">
      <h1>List of Trainees</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="home.php">Home</a></li>
          <li class="breadcrumb-item active">List</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

   

    <section class="section home">
      <div class="row">

        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Trainees with : <u><?=$_GET['nature_termi']?></u></h5>
              <p>Listed below are trainees in different RTCs with special remark/status that are under monitoring and/or Academic Board.</p>

              <!-- Table with stripped rows -->

             
              <table class="table datatable">
                <thead>
                  <tr>
                    <th>Rank</th>
                    <th>Full Name</th>
                    <th>Age</th>
                    <th>Case</th>
                    <th>RTC</th>
                    <th>Update</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php 
                    $get_trainees = mysqli_query($db,"select * from list WHERE nature_termi=$_GET[stat]");
                            if(mysqli_num_rows($get_trainees)>= 1){ 
                              $age = "??";
                              while($rows2=mysqli_fetch_array($get_trainees)){
                                if($rows2['age'] == ''){

                                }
                                else {
                                  $age = $rows2['age'];
                                }
                              ?>
                      <tr>
                        <td><?=$rows2['rank']?></td>
                        <td><a href="tprofile.php?id=<?=$rows2['id']?>"><?=$rows2['fullname']?></a></td>
                        <td><?=$age?></td>
                        <?php 
                        $x4 = "";
                          $status = mysqli_query($db,"select * from hatol WHERE id=$rows2[nature_termi]");
                          if($status){
                            $result4 = $status->fetch_assoc(); 
                            $x4 = $result4['stat'];
                          }
                          else {
                            $x4 = $rows2['nature_termi'];
                          } 
                          

                        ?>
                        <td><?=$x4?></td>
                        <?php 
                          $query2 = mysqli_query($db,"select * from rtc WHERE id=$rows2[rtc]");
                          $result3 = $query2->fetch_assoc();  
                          $x3 = $result3['rtc_short'];
                        ?>
                        <td><a href="thrurtc.php?rtc=<?=$result3['id']?>&r=<?=$result3['rtc_name']?>"><?=$x3?></a></td>
                        <td>
                            <select class="form-select" id="aa<?=$rows2['id']?>" required>
                            <?php 
                            $get_hatol = mysqli_query($db,"select * from hatol");
                              if(mysqli_num_rows($get_hatol)>= 1){ 
                                $selected = "";
                              while($hatol=mysqli_fetch_array($get_hatol)){
                                if($rows2['nature_termi'] == $hatol['id']){
                                    $selected = "selected";
                                }

                                ?>

                                  <option value="<?=$hatol['id']?>" <?=$selected?>><?=$hatol['stat']?></option>
                              <?php 
                                $selected = "";
                                }
                              }
                              ?>
                            </select>
                        </td>
                        <td><button id="<?=$rows2['id']?>" value="<?=$rows2['id']?>" class="bi bi-pencil btn btn-info"></button></td>
                      </tr>
                  <?php
                        }
                      }
                      else { ?>
                        <tr>
                        <td colspan="7"><center><b>No Entry Found</b></center></td>
                      </tr>
                      <?php  
                      }
                  ?>
                </tbody>
              </table>
              <!-- End Table with stripped rows -->

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- BODY CONTENT -->

  <?php 
    require('footer.php');
  ?>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>