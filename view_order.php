<html>
<?php 
require('check_sess.php');
require("db/conn.php");
    require('head.php');
  ?>
  <head>
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
  <script>
    $(document).ready(function() {

     $('#reset').on("click", function() {
        $('#fileName').val('');
        document.getElementById('size').innerHTML = '';
        document.getElementById('fp').innerHTML = '';
          event.preventDefault();
       });
     $('#fileName').onChange("click", function() {
      
        var allowed_extensions = new Array("pdf","doc","docs", "docx");
        var file_extension = fileName.split('.').pop().toLowerCase(); // split function will split the filename by dot(.), and pop function will pop the last element from the array which will give you the extension as well. If there will be no extension then it will return the filename.

        for(var i = 0; i <= allowed_extensions.length; i++)
        {
            if(allowed_extensions[i]==file_extension)
            {
                alert('Allowed');
                //document.getElementById('size').innerHTML = 'Allowed File';
                return true; // valid file extension
            }
            else {
              document.getElementById('size').innerHTML = 'NOT Allowed File';
            }
        }
          event.preventDefault();
       });
    });

  </script>
  </head>

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
      <h1>UPLOADED ORDERS</h1>
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
              
              <h5 class="card-title">Overall Uploaded Orders</h5>
              <p>Listed below are Orders Uploaded to this Digital Storage.</p>

              <div class='col-md-12'><div class='card-body'><div class='form-control'><center>
                <iframe src="orders/<?=$_GET['file']?>" width="100%" height="1000px" /></iframe>
                <br><a href='orders/<?=$_GET['file']?>'>Click here to Download</a></center></div></div></div>
                <!-- <iframe src='https://view.officeapps.live.com/op/embed.aspx?src=https://www.madasikinara.com/owlsystem/orders/<?=$_GET['file']?>' width='100%' height='650px' frameborder='0'></iframe> -->
              <hr />
              <!-- Table with stripped rows -->

             
              <table class="table datatable">
                <thead>
                  <tr>
                    <th>File Name</th>
                    <th>Date Uploaded</th>
                  </tr>
                </thead>
                <tbody>
                  <?php 
                    $get_orders = mysqli_query($db,"select * from orders ORDER BY date ASC");
                            if(mysqli_num_rows($get_orders)>= 1){ 
                              $age = "??";
                              while($rows2=mysqli_fetch_array($get_orders)){
                                $time_in = date("d-M-Y H:i", strtotime($rows2['date']))."H";
                                $path_info = pathinfo('/orders/'.$rows2['orig_name']);

                                echo $path_info['extension']; // "bill"
                                if($path_info['extension'] == 'pdf'){
                                  $icon = 'pdf.PNG';
                                }else if($path_info['extension'] == 'docx'){
                                  $icon = 'word.PNG';
                                }else {
                                  $icon = 'folder.PNG';
                                }
                              ?>
                              <tr>
                                <td></td>
                                <td></td>
                              </tr>
                      <tr>
                        <td><a href="view_order.php?file=<?=$rows2['orig_name']?>"><img height='20px' width='20px' src='assets/img/<?=$icon?>'></img> <?=$rows2['orig_name']?></a></td>
                        <td><?=$time_in?></td>
                        
                      </tr>
                  <?php
                        }
                      }
                      else { ?>
                        <tr>
                        <td colspan="2"><center><b>No Entries Found</b></center></td>
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
    </section>
    
 
  </main><!-- End #main -->


   
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