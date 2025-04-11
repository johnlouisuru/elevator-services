<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">


<title>T11 Personnel Monitoring</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
      body{margin-top:20px;
background-color:#eee;
}
.project-list-table {
    border-collapse: separate;
    border-spacing: 0 12px
}

.project-list-table tr {
    background-color: #fff
}

.table-nowrap td, .table-nowrap th {
    white-space: nowrap;
}
.table-borderless>:not(caption)>*>* {
    border-bottom-width: 0;
}
.table>:not(caption)>*>* {
    padding: 0.75rem 0.75rem;
    background-color: var(--bs-table-bg);
    border-bottom-width: 1px;
    box-shadow: inset 0 0 0 9999px var(--bs-table-accent-bg);
}

.avatar-sm {
    height: 2rem;
    width: 2rem;
}
.rounded-circle {
    border-radius: 50%!important;
}
.me-2 {
    margin-right: 0.5rem!important;
}
img, svg {
    vertical-align: middle;
}

a {
    color: #3b76e1;
    text-decoration: none;
}

.badge-soft-danger {
    color: #f56e6e !important;
    background-color: rgba(245,110,110,.1);
}
.badge-soft-success {
    color: #63ad6f !important;
    background-color: rgba(99,173,111,.1);
}

.badge-soft-primary {
    color: #3b76e1 !important;
    background-color: rgba(59,118,225,.1);
}

.badge-soft-info {
    color: #57c9eb !important;
    background-color: rgba(87,201,235,.1);
}

.avatar-title {
    align-items: center;
    background-color: #3b76e1;
    color: #fff;
    display: flex;
    font-weight: 500;
    height: 100%;
    justify-content: center;
    width: 100%;
}
.bg-soft-primary {
    background-color: rgba(59,118,225,.25)!important;
}
    </style>
</head>
<body>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css" integrity="sha512-pVCM5+SN2+qwj36KonHToF2p1oIvoU3bsqxphdOIWMYmgr4ZqD3t5DjKvvetKhXGc/ZG5REYTT6ltKfExEei/Q==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css" integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />
<div class="container">
<div class="row align-items-center">
    <div class="col-md-6">
        <div class="mb-3">
            <h5 class="card-title">T11 LOCATION MONITORING <span class="text-muted fw-normal ms-2"></span></h5>
        </div>
    </div>

</div>
    <div class="row">
        <div class="col-lg-12">
            <div class>
                <div class="table-responsive">
                    <table class="table project-list-table table-nowrap align-middle table-borderless">
                        <thead>
                        <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Abd Office</th>
                        <th scope="col">Ashore</th>
                        <th scope="col">On-Duty</th>
                        <th scope="col">Schooling</th>
                        <th scope="col">Official Business</th>
                        <th scope="col">On Leave / Passes</th>
                        <th scope="col">Remarks</th>
                        <th scope="col" ><span class="bx bx-pencil">Action</span></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><img src="assets/img/profile.jpg" alt class="avatar-sm rounded-circle me-2" />
                                <a href="#" class="text-body">CG ENS JLS URU</a></td>
                            <td>
                                <center>
                                    <div class="form-check">
                                      <input class="form-check-input" type="radio" name="a1" id="a1">
                                    </div>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <div class="form-check">
                                      <input class="form-check-input" type="radio" name="a1" id="a1">
                                    </div>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <div class="form-check">
                                      <input class="form-check-input" type="radio" name="a1" id="a1">
                                    </div>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <div class="form-check">
                                      <input class="form-check-input" type="radio" name="a1" id="a1">
                                    </div>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <div class="form-check">
                                      <input class="form-check-input" type="radio" name="a1" id="a1">
                                    </div>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <div class="form-check">
                                      <input class="form-check-input" type="radio" name="a1" id="a1">
                                    </div>
                                </center>
                            </td>
                            <td><input type="text" class="form-control" placeholder="Insert Remarks Here..."></td>

                            <td>
                                <input class="btn btn-primary" type="submit" id='update'>
                                
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>