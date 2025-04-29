<!DOCTYPE html>
<html lang="en">

<?php 
//require('check_sess.php');
require("db/conn.php");
    require('head.php');
    require('fb_time_ago.php');

  ?>
<head>
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
<script>

    $(document).ready(function() {
      $('.opns').on("click", function() {
      //$('.modal').show();
          var x = (this.id);
          var y = $('#'+x).val();
          //alert(x);
          //return;
         var formData = {
              cgid : x,
              cgd : y
            };

          $.ajax({
              type: "POST",
              url: "get_station.php",
              data: formData,
              dataType: "json",
              encode: true,
            }).done(function(data) {
              //$('.modal').hide();
              var sel2 = $(".cgs");
              sel2.empty();
              sel2.append(data['message']);
              //$('.toast').toast('show');
              //alert(data['message']);
              $('#cgstationModal').modal('show');
            });
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
      <h1>TRAINEES' STATUS MONITORING SYSTEM</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->


    <!-- Content Row -->
    <section class="section dashboard">
      <div class="row">
    <div class="col-lg-12">
                    <div class="row">
            
                    <?php 
                       /* echo $_SESSION['loggedin_time']."<BR>";
                        echo $_SESSION['user_id']."<BR>";
                        echo $_SESSION['email']."<BR>";
                        echo $_SESSION['office']."<BR>";
                    */?>
                        <!-- Present -->
            
                        <!-- <div  class="col-xl-6 col-md-6 mb-2"> 
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">

                                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                                                <a href="home.php">FOR TERMINATION</a></div>

                                            <div class="h4 mb-0 font-weight-bold text-blue-800"> 32</div>
                      <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?php echo number_format(30.0, 2) ?>%</div>
                                                </div>
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-danger" role="progressbar"
                                                            style="width: <?php echo number_format(31.8, 2) ?>%" aria-valuenow="<?php echo number_format(30.0, 2) ?>" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div> -->
           
            <!-- End of Present -->

           

            <!-- RESOLVED CASE (NHQ) -->
            
                        <div  class="col-xl-6 col-md-6 mb-2"> <!-- Dito ang class opacity -->
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                <a href="upload.php">RESOLVED CASE (NHQ-PCG)</a></div>
                                                <?php 
                                                        $get_status2 = mysqli_query($db,"select COUNT(id) FROM orders WHERE is_nhq='1'");
                                                          if(mysqli_num_rows($get_status2)>= 1){ 
                                                            $qq = $get_status2->fetch_assoc();
                                                            ?>
                                                            <div class="h1 mb-0 font-weight-bold text-blue-800"> <?=$qq['COUNT(id)']?> <i class="bi bi-folder-check"></i></div>
                                                            <?php 
                                                            }
                                                            else { ?>
                                                                <div class="h1 mb-0 font-weight-bold text-blue-800"> 0 <i class="bi bi-folder-check"></i></div>

                                                            <?php 
                                                            }
                                                    ?>
                                            
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <!--<div class="col-auto">
                                            <i class="fas fa-people-carry fa-2x text-gray-300"></i>
                                        </div>-->
                                    </div>
                                </div>
                            </div>
                        </div>
           
            <!-- End of RESOLVED CASE (NHQ) -->
            <!-- RESOLVED CASE (NHQ) -->
            
                        <div  class="col-xl-6 col-md-6 mb-2"> <!-- Dito ang class opacity -->
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                <a href="upload.php">RESOLVED CASE (HCGETDC)</a></div>
                                                <?php 
                                                        $get_status2 = mysqli_query($db,"select COUNT(id) FROM orders WHERE is_nhq='0'");
                                                          if(mysqli_num_rows($get_status2)>= 1){ 
                                                            $qq = $get_status2->fetch_assoc();
                                                            ?>
                                                            <div class="h1 mb-0 font-weight-bold text-blue-800"> <?=$qq['COUNT(id)']?> <i class="bi bi-folder-check"></i></div>
                                                            <?php 
                                                            }
                                                            else { ?>
                                                                <div class="h1 mb-0 font-weight-bold text-blue-800"> 0 <i class="bi bi-folder-check"></i></div>

                                                            <?php 
                                                            }
                                                    ?>
                                            
                      <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <!--<div class="col-auto">
                                            <i class="fas fa-people-carry fa-2x text-gray-300"></i>
                                        </div>-->
                                    </div>
                                </div>
                            </div>
                        </div>
           
            <!-- End of RESOLVED CASE (NHQ) -->

            <!-- TOTAL RESOLUTION UPLOADED -->
            
                        <div  class="col-xl-6 col-md-6 mb-2"> <!-- Dito ang class opacity -->
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                <a href="upload_reso.php">TOTAL RESOLUTION UPLOADED</a></div>
                                                <?php 
                                                        $get_status2 = mysqli_query($db,"select COUNT(id) FROM resolution");
                                                          if(mysqli_num_rows($get_status2)>= 1){ 
                                                            $qq = $get_status2->fetch_assoc();
                                                            ?>
                                                            <div class="h1 mb-0 font-weight-bold text-blue-800"> <?=$qq['COUNT(id)']?> <i class="bi bi-folder-check"></i></div>
                                                            <?php 
                                                            }
                                                            else { ?>
                                                                <div class="h1 mb-0 font-weight-bold text-blue-800"> 0 <i class="bi bi-folder-check"></i></div>

                                                            <?php 
                                                            }
                                                    ?>
                                            
                      <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <!--<div class="col-auto">
                                            <i class="fas fa-people-carry fa-2x text-gray-300"></i>
                                        </div>-->
                                    </div>
                                </div>
                            </div>
                        </div>
           
            <!-- End of TOTAL RESOLUTION UPLOADED -->

            <!-- TOTAL TRAINEES UNDER MONITORING -->
            
                        <div  class="col-xl-6 col-md-6 mb-2"> <!-- Dito ang class opacity -->
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                <a href="home.php">TOTAL TRAINEES UNDER MONITORING</a></div>
                                                <?php 
                                                        $get_status3 = mysqli_query($db,"select COUNT(id) FROM list WHERE is_terminated IS NULL AND nature_termi != 0");
                                                          if(mysqli_num_rows($get_status3)>= 1){ 
                                                            $qq = $get_status3->fetch_assoc();
                                                            ?>
                                                            <div class="h1 mb-0 font-weight-bold text-blue-800"> <?=$qq['COUNT(id)']?> <i class="bi bi-people"></i></div>
                                                            <?php 
                                                            }
                                                            else { ?>
                                                                <div class="h1 mb-0 font-weight-bold text-blue-800"> 0 <i class="bi bi-person"></i></div>

                                                            <?php 
                                                            }
                                                    ?>
                                            
                      <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <!--<div class="col-auto">
                                            <i class="fas fa-people-carry fa-2x text-gray-300"></i>
                                        </div>-->
                                    </div>
                                </div>
                            </div>
                        </div>
           
            <!-- End of TOTAL TRAINEES UNDER MONITORING -->
           
                    </div>
                </div>
                 <!-- Right side columns -->
        
  </div>
  </section>

    <section class="section dashboard">
      <div class="row">

<div class="col-lg-7">
          <div class="card ">
            <div class="card-body">
              <h5 class="card-title">Regional Training Centers</h5>

              <!-- Pie Chart -->
              <div id="pieChart2" style="min-height: 400px;" class="echart"></div>

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  echarts.init(document.querySelector("#pieChart2")).setOption({
                    title: {
                      text: ' ',
                      subtext: ' ',
                      left: 'center'
                    },
                    tooltip: {
                      trigger: 'item'
                    },
                    legend: {
                      orient: 'vertical',
                      left: 'left'
                    },
                    series: [{
                      name: '',
                      type: 'pie',
                      radius: '60%',
                      data: [
                        <?php 
                        $total_nature = 0;
                          $get_status2 = mysqli_query($db,"select rtc, COUNT(id), COUNT(rtc) FROM list WHERE is_terminated IS NULL AND nature_termi != 0 GROUP BY rtc");
                                  if(mysqli_num_rows($get_status2)>= 1){ 
                                    
                                  while($rows3=mysqli_fetch_array($get_status2)){ ?>
                                    { 
                                      value: '<?=$rows3['COUNT(id)']?>',
                                      
                                        <?php 
                                          $query2 = mysqli_query($db,"select * from rtc WHERE id=$rows3[rtc]");
                                          $result3 = $query2->fetch_assoc();  
                                          $x3 = $result3['rtc_short'];
                                        ?>
                                      
                                      name: '<?=$x3?> [<?=$rows3['COUNT(id)']?>]'
                                    },
                                  <?php 
                                    $total_nature = $total_nature + 1;
                                  }
                                }
                                    ?>
                        
                        
                      ],
                      emphasis: {
                        itemStyle: {
                          shadowBlur: 10,
                          shadowOffsetX: 0,
                          shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                      }
                    }]
                  });
                });

              </script>
              <!-- End Pie Chart -->
              <h3>Total RTC/s : <?=$total_nature?></h3>
            </div>
          </div>
        </div>
        <div class="col-lg-5">

          <!-- Recent Activity -->
          <div class="card">
            <!-- <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div> -->

            <div class="card-body">
              <h5 class="card-title">Recent Trainee's Updates <span class="bi bi-info"> </span></h5>

              <div class="activity">

                <?php 
                    $get_trainees = mysqli_query($db,"select * from logs ORDER BY date DESC LIMIT 9");
                            if(mysqli_num_rows($get_trainees)>= 1){ 
                              
                              while($rows2=mysqli_fetch_array($get_trainees)){
                                $date_filed = date("d-M-Y H:i", strtotime($rows2['date']));
                              ?>

                <div class="activity-item d-flex">
                  <div class="activite-label"> <?=facebook_time_ago($date_filed)?></div>
                  <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                  <div class="activity-content">
                    <?php 
                      $query2 = mysqli_query($db,"select * from list WHERE id=$rows2[tid] AND nature_termi != 0");
                      $result3 = $query2->fetch_assoc();
                      if($result3){  
                        $x3 = $result3['fullname'];
                      } else {
                        $x3 = '';
                      }
                    ?>
                    <?=$rows2['activity']?> <a href="tprofile.php?id=<?=$rows2['tid']?>" class="fw-bold text-dark"> <?=$x3?></a> 
                  </div>
                </div><!-- End activity item-->



                <?php 
                    }
                    ?>
                    <hr />
                        <div class="activity-item d-flex">
                          <center><i class="bi bi-eye-fill"></i> <a href="logs.php">See all Activity Logs</a></center>
                        </div><!-- End activity item-->

                    <?php
                }
                else { ?>
                <div class="activity-item d-flex">
                  <div class="activite-label">No Data Found.</div>
                  <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                  <div class="activity-content">
                    No Data Found As of Now.
                  </div>
                </div><!-- End activity item-->
                <hr />

                <div class="activity-item d-flex">
                  <i class="bi bi-eye-fill"></i> <a href="#">See all Activity Logs</a>
                </div><!-- End activity item-->
                <?php 
                }
                ?>

                <!-- End activity item-->

              </div>

            </div>
          </div><!-- End Recent Activity -->
          <!-- end of Square Data-->
      </div>

<div class="col-lg-7">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Trainees Case Status</h5>

              <!-- Pie Chart -->
              <div id="pieChart" style="min-height: 600px;" class="echart"></div>

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  echarts.init(document.querySelector("#pieChart")).setOption({
                    title: {
                      text: ' ',
                      subtext: ' ',
                      left: 'center'
                    },
                    tooltip: {
                      trigger: 'item'
                    },
                    legend: {
                      orient: 'vertical',
                      left: 'left'
                    },
                    series: [{
                      name: 'Status',
                      type: 'pie',
                      radius: '60%',
                      data: [
                        <?php 
                          $get_status = mysqli_query($db,"select nature_termi, COUNT(id) FROM list WHERE is_terminated IS NULL AND nature_termi != 0 GROUP BY nature_termi");
                                  if(mysqli_num_rows($get_status)>= 1){ 
                                    $total_nature = 0;
                                    $for_name_wlink = "";
                                  while($rows2=mysqli_fetch_array($get_status)){ 
                                      //$for_name_wlink = "<a href='#'>$rows2[nature_termi]</a>";
                                    ?>
                                    { 
                                      
                                      
                                      //value: '<?php // $rows2['COUNT(id)']?>',
                                      <?php 
                                        $query2 = mysqli_query($db,"select * from hatol WHERE id=$rows2[nature_termi]");
                                        if($query2){
                                           $result3 = $query2->fetch_assoc();  
                                          $x3 = $result3['stat']; ?>
                                           value: '<?=$rows2['COUNT(id)']?>',
                                          name: '<?=$x3 ?> [<?=$rows2['COUNT(id)']?>]'
                                      //name: '<?php echo $rows2['nature_termi'] ?>'
                                          <?php
                                        }
                                        else {
                                            $x3 = $rows2['nature_termi'];
                                          }
                                      ?>
                                      
                                        
                                    },
                                  <?php 
                                    $total_nature = $total_nature + $rows2['COUNT(id)'];
                                  }
                                }
                                    //
                                    ?>
                        
                        
                      ],
                      emphasis: {
                        itemStyle: {
                          shadowBlur: 10,
                          shadowOffsetX: 0,
                          shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                      }
                    }]
                  });
                });

              </script>
              <!-- End Pie Chart -->
              <h3>Total Trainee/s : <?=$total_nature?></h3>
            </div>
          </div>
        </div>

        <div class="col-lg-5">
          <div class="card">
            <div class="card-body">
                <h5 class="card-title">List of all Case Status</h5>
                <?php 
                    $get_trainees = mysqli_query($db,"select * FROM hatol");
                            if(mysqli_num_rows($get_trainees)>= 1){ 
                              $loop = 1;
                              while($rows2=mysqli_fetch_array($get_trainees)){
                              ?>
                        <a href="stat.php?stat=<?=$rows2['id']?>&nature_termi=<?=$rows2['stat']?>"><?=$loop?> - <?=$rows2['stat']?></a><br />
                      
                  <?php
                    $loop++;
                        }
                      }
                      else { ?>
                        
                        <a href="#"><b>No Entries Found</b></a>
                      
                      <?php  
                      }
                  ?>
              </div>
          </div>
        </div>
      </div>

        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Rank Distribution</h5>

              <!-- Pie Chart -->
              <div id="pieChart3" style="min-height: 400px;" class="echart"></div>

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  echarts.init(document.querySelector("#pieChart3")).setOption({
                    title: {
                      text: ' ',
                      subtext: ' ',
                      left: 'center'
                    },
                    tooltip: {
                      trigger: 'item'
                    },
                    legend: {
                      orient: 'vertical',
                      left: 'left'
                    },
                    series: [{
                      name: 'RTC:',
                      type: 'pie',
                      radius: '60%',
                      data: [
                        <?php 
                          $get_status2 = mysqli_query($db,"select rank, COUNT(id) FROM list WHERE is_terminated IS NULL AND nature_termi != 0 GROUP BY rank");
                                  if(mysqli_num_rows($get_status2)>= 1){ 
                                    $total_nature = 0;
                                  while($rows3=mysqli_fetch_array($get_status2)){ ?>
                                    { 
                                      value: '<?=$rows3['COUNT(id)']?>',
                                      name: '<?=$rows3['rank']?> [<?=$rows3['COUNT(id)']?>]'
                                    },
                                  <?php 
                                    $total_nature = $total_nature + 1;
                                  }
                                }
                                    ?>
                        
                        
                      ],
                      emphasis: {
                        itemStyle: {
                          shadowBlur: 10,
                          shadowOffsetX: 0,
                          shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                      }
                    }]
                  });
                });

              </script>
              <!-- End Pie Chart -->
              <h3>Total Rank/s: <?=$total_nature?></h3>
            </div>
          </div>
        </div>

 

        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Class Distribution and its Corresponding Total Case</h5>

              <!-- Bar Chart -->
              <div id="barChart"></div>

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  new ApexCharts(document.querySelector("#barChart"), {
                    series: [{
                      data: [
                        <?php 
                          $class1 = mysqli_query($db,"select class, COUNT(id) FROM list WHERE is_terminated IS NULL AND nature_termi != 0 GROUP BY class");
                                  if(mysqli_num_rows($class1)>= 1){ 
                                    $total_nature = 0;
                                    while($rows4=mysqli_fetch_array($class1)){ ?>
                                            /*'<?=$rows4['class']?>'*/ <?=$rows4['COUNT(id)']?>,
                            <?php $total_nature++;} ?> 
                                  
                            <?php 
                                      } ?>
                        ]
                    }],
                    chart: {
                      type: 'bar',
                      height: 350
                    },
                    plotOptions: {
                      bar: {
                        borderRadius: 4,
                        horizontal: true,
                      }
                    },
                    dataLabels: {
                      enabled: true
                    },
                    xaxis: {
                      categories: [
                        <?php 
                        $total_class = 0;
  $class1 = mysqli_query($db,"select class, COUNT(id) FROM list WHERE nature_termi != 0 GROUP BY class ASC");
          if(mysqli_num_rows($class1)>= 1){ 
            
            while($rows4=mysqli_fetch_array($class1)){ ?>
                <?php 
                    $get_cname = mysqli_query($db,"select * from rtc_class WHERE id=$rows4[class]");
                      $cname = $get_cname->fetch_assoc();  
                      $x3 = substr($cname['class_name'], 5);
                 ?>
                    
                    '<?=$x3?>',
            <?php $total_class = $total_class + 1;} ?> 
          
    <?php 
              } ?>
                      ],
                    }
                  }).render();
                });
              </script>
              <!-- End Bar Chart -->
            <h3>Total Class/es: <?=$total_class?></h3>
            </div>

          </div>
        </div>



      <!-- Large Modal -->
             <!--  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#largeModal">
                Large Modal
              </button> -->

              <div class="modal fade" id="rtcModal" tabindex="-1">
                <div class="modal-dialog modal-lg">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Philippine Coast Guard (RTCs)</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th>Regional Training Centers</th>
                        <th>Director</th>
                      </tr>
                    </thead>
                    <tbody>
                     <?php 

                  //echo $db;
                    $get_rtc = mysqli_query($db,"select * from rtc");
                            if(mysqli_num_rows($get_rtc)>= 1){ 
                              while($rows2=mysqli_fetch_array($get_rtc)){ ?>
                    
                      <tr>
                        <td><a class="text-primary"><?=$rows2['rtc_name']?></a></td>
                        <td><?=$rows2['rtc_dir']?></td>
                      </tr>
                      
                    
                                <?php
                                }
                            }
                              ?>
                </tbody>
                  </table>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                      <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
                    </div>
                  </div>
                </div>
              </div><!-- End Large Modal-->


              <!-- Large Modal -->
             <!--  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#largeModal">
                Large Modal
              </button> -->

              <div class="modal fade" id="districtModal" tabindex="-1">
                <div class="modal-dialog modal-xl">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Philippine Coast Guard (Districts)</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th scope="col">District</th>
                        <th scope="col">Acronym</th>
                        <th scope="col">Commander</th>
                        <th scope="col">Address</th>
                        <th scope="col">E-mail</th>
                        <th scope="col">Contact #</th>
                      </tr>
                    </thead>
                    <tbody>
                     <?php 

                  //echo $db;
                    $get_rtc = mysqli_query($db,"select * from cg_district");
                            if(mysqli_num_rows($get_rtc)>= 1){ 
                              while($rows2=mysqli_fetch_array($get_rtc)){ ?>
                    
                      <tr>
                        <td><button class="opns btn btn-primary" id="<?=$rows2['id']?>" value="<?=$rows2['district']?>"><i class="bi bi-star me-1"></i><?=$rows2['district']?></button></td>
                        <td><?=$rows2['acro']?></td>
                        <td><?=$rows2['commander']?></td>
                        <td><?=$rows2['address']?></td>
                        <td><?=$rows2['email']?></td>
                        <td><?=$rows2['contact']?></td>
                      </tr>
                      
                    
                                <?php
                                }
                            }
                              ?>
                </tbody>
                  </table>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                      <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
                    </div>
                  </div>
                </div>
              </div><!-- End Large Modal-->

              <!-- Large Modal for coast guard station -->
             <!--  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#largeModal">
                Large Modal
              </button> -->

              <div class="modal fade" id="cgstationModal" tabindex="-1">
                <div class="modal-dialog modal-xl">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="cgs-title"></h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="cgs modal-body">
                        
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                      <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
                    </div>
                  </div>
                </div>
              </div><!-- End Large Modal-->

    </section>

    <section class="section">
        <div class="row">
            <div class="col-lg-6 h-50">
              <div class="card">
                <div class="card-body">
                  <h1 class="card-title">Philippine Map: PCG-RTCs & Districts</h1>

                  <!-- Bar Chart -->
                    <div class="col-lg-6">
                    <button class="btn btn-secondary" style="color:#e7b11e;  " data-bs-toggle="modal" data-bs-target="#rtcModal">📍 Regional Training Centers</button><br><br>
                  
                    <button class="btn btn-secondary" style="color:blue; " data-bs-toggle="modal" data-bs-target="#districtModal">📍 Districts</button><br><br>
                  
                    <button class="btn btn-secondary" style="color:#03fcfc; " data-bs-toggle="modal" data-bs-target="#largeModal">📍 District & RTC</button><br><br>
                    </div>
                  

              </div>
            </div>
            
          </div>

          <div class="col-lg-6 h-50">
              <div class="card">
                <div class="card-body">
                    
                <center>
                    <div id="map" class="col-lg-6 h-50"></div>
                </center>

              </div>
            </div>
            
          </div>
        </div>
      </section>

  </main><!-- End #main -->

<!-- <div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Bar Chart</h5>

               Bar Chart 
              <div id="barChart" style="min-height: 400px;" class="echart"></div>

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  echarts.init(document.querySelector("#barChart")).setOption({
                    xAxis: {
                      type: 'category',
                      data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
                    },
                    yAxis: {
                      type: 'value'
                    },
                    series: [{
                      data: [120, 200, 150, 80, 70, 110, 130],
                      type: 'bar'
                    }]
                  });
                });
              </script>

            </div>
          </div>
        </div> -->

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

  <script src="rtcmap/mapdata.js"></script>
    <script src="rtcmap/countrymap.js"></script>
    <script src="rtcmap/vector.js"></script>



</body>

</html>