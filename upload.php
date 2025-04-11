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
      <h1>UPLOADING ORDERS</h1>
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
              
              <h5 class="card-title">Attach Files</h5>
              <p>This is to store all the Orders from CGETDC and NHQ</p>
              <div class="alert alert-warning">
        Allowed Type are [Word Docs and PDF only]***
      </div>

      <form method="POST" action="process_upload.php" enctype="multipart/form-data" id="to_upload" class="form-control needs-validation" novalidate>
        <div class="form-group">
          <label for="fileName">Select a file</label>
          <div class="input-group">
            <input type="file" id="fileName" name="fileName" class="form-control" onchange="GetFileSizeNameAndType()" required>
            <div class="invalid-feedback">
              Please select a file to proceed.
            </div>
          </div>
        </div>
        <hr />
        <div class="form-group">
          
            <input class="form-check-input" type="radio" name="is_nhq" value="0" required checked>
            <label for="fileName">Resolved HCGETDC</label>

            
        </div>
        <div class="form-group">
          
            <input class="form-check-input" type="radio" name="is_nhq" value="1" required>
            <label for="fileName">Resolved NHQ</label>
            <div class="invalid-feedback">
              Choose the Level of Authority.
          </div>
            
        </div>
        
        <hr />
        <div>
          <button type="button" class="btn btn-warning" id="reset" value="Reset"><span class="bi bi-x-circle-fill" >Reset</span></button>&nbsp &nbsp
          <button type="submit" name="submit" class="btn btn-primary" value="Upload"><span class="bi bi-cloud-upload-fill" >Upload</span></button>
        </div>
      </form>
      <p id="size"></p>
    <p id="fp"></p>
          </div>

        </div>

        <div class="card">
            <div class="card-body">
              
              <h5 class="card-title">Overall Uploaded Orders</h5>
              <p>Listed below are Orders Uploaded to this Digital Storage.</p>

              <!-- Table with stripped rows -->

             
              <table class="table datatable">
                <thead>
                  <tr>
                    <th>File Name</th>
                    <th>Date Uploaded</th>
                    <th>Level of Authority</th>
                  </tr>
                </thead>
                <tbody>
                  <?php 
                  $nature = '';
                  $message = '';
                    $get_orders = mysqli_query($db,"select * from orders ORDER BY date ASC");
                            if(mysqli_num_rows($get_orders)>= 1){ 
                              $age = "??";
                              while($rows2=mysqli_fetch_array($get_orders)){
                                $time_in = date("d-M-Y H:i", strtotime($rows2['date']))."H";
                                $nature = $rows2['is_nhq'];
                                if($nature == 0){
                                  $message = "Resolved HCGETDC";
                                }
                                else {
                                  $message = "Resolved NHQ";
                                }
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
                        <td><a href="view_order.php?file=<?=$rows2['orig_name']?>"><img height='20px' width='20px' src='assets/img/<?=$icon?>'></img> <?=$rows2['orig_name']?></a></td>
                        <td><?=$time_in?></td>
                        <td><?=$message?></td>
                        
                      </tr>
                  <?php
                        }
                      }
                      else { ?>
                        <tr>
                        <td colspan="3"><center><b>No Entries Found</b></center></td>
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
    
 
   <script>
        function GetFileSizeNameAndType()
        {
        var fi = document.getElementById('fileName'); // GET THE FILE INPUT AS VARIABLE.

        document.getElementById('fp').innerHTML = '';
        // VALIDATE OR CHECK IF ANY FILE IS SELECTED.
        
            
                //ACCESS THE SIZE PROPERTY OF THE ITEM OBJECT IN FILES COLLECTION. IN THIS WAY ALSO GET OTHER PROPERTIES LIKE FILENAME AND FILETYPE                
                document.getElementById('fp').innerHTML = 
                '<div class="progress" role="progressbar" aria-label="Animated striped example" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%; height: 30px"><div class="progress-bar progress-bar-striped progress-bar-animated" style="width: 100%; height: 30px"><i class="bi bi-check">'+fi.files[0].name+' --- 100% </i></div></div><br>';
         
    }
    </script>
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