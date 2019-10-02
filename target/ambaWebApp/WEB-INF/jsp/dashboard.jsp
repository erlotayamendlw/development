<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Amba Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value='/_ui-src/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="<c:url value='/_ui-src/vendor/datatables/dataTables.bootstrap4.css'/>" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value='/_ui-src/css/sb-admin.css'/>" rel="stylesheet">

</head>

<body id="page-top">

<nav class="navbar navbar-expand static-top">

    <a class="navbar-brand mr-1" href="/"><img src=<c:url value='/_ui-src/resources/amba_logo.webp'/> width=150px></a>

    <button class="btn btn-link btn-sm order-1 order-sm-0 amb-text-colour-secondary" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
            <div class="input-group-append">
                <button class="btn btn-primary amb-bg-colour-secondary" type="button">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
    </form>

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item dropdown no-arrow mx-1">
            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw amb-text-colour-secondary"></i>
                <span class="badge badge-danger">9+</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
            </div>
        </li>
        <li class="nav-item dropdown no-arrow mx-1">
            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw amb-text-colour-secondary"></i>
                <span class="badge badge-danger">7</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
            </div>
        </li>
        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-user-circle fa-fw amb-text-colour-secondary"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">Settings</a>
                <a class="dropdown-item" href="#">Activity Log</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
            </div>
        </li>
    </ul>

</nav>

<div id="wrapper">

    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="/">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Dashboard</span>
            </a>
        </li>
    </ul>

    <div id="content-wrapper">

        <div class="container-fluid">

            <!-- DataTables Start -->

            <!-- VIP Tables Navigation Tabs -->
            <div class="card mb-3">
                <div class="nav nav-tabs " role="tablist">
                    <a class="nav-item nav-link amb-text-colour-primary active" id="nav-vipUser-tab" data-toggle="tab" href="#amb-vipUser" role="tab" aria-selected="true">VIP Users</a>
                    <a class="nav-item nav-link amb-text-colour-primary" id="nav-vipDevices-tab" data-toggle="tab" href="#amb-vipDevices" role="tab" aria-selected="true">VIP Devices</a>
                    <a class="nav-item nav-link amb-text-colour-primary" id="nav-vipParameters-tab" data-toggle="tab" href="#amb-vipParameters" role="tab" aria-selected="true">VIP Parameters</a>
                </div>

                <div class="card-body tab-content" id="nav-tabContent">

                    <!-- VIP User -->
                    <div class="tab-pane fade show active table-responsive" id="amb-vipUser" role="tabpanel" aria-labelledby="amb-vipUser">
                        <h4 class="text-center">VIP User</h4>
                        <table class="table table-bordered" id="amb-vipUser-table" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th>DeviceID</th>
                                <th>DeviceName</th>
                                <th>DeviceType</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>DeviceID</th>
                                <th>DeviceName</th>
                                <th>DeviceType</th>
                            </tr>
                            </tfoot>
                        </table>
                    </div>

                    <!-- VIP Devices -->
                    <div class="tab-pane fade table-responsive" id="amb-vipDevices" role="tabpanel" aria-labelledby="amb-vipDevices">
                        <h4 class="text-center">VIP Devices</h4>
                        <table class="table table-bordered" id="amb-vipDevices-table" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th>VIP ID</th>
                                <th>Device ID</th>
                                <th>Device Type</th>
                                <th>Device Name</th>
                                <th>Device Alias</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>VIP ID</th>
                                <th>Device ID</th>
                                <th>Device Type</th>
                                <th>Device Name</th>
                                <th>Device Alias</th>
                            </tr>
                            </tfoot>
                        </table>
                    </div>

                    <!-- VIP Parameters -->
                    <div class="tab-pane fade table-responsive" id="amb-vipParameters" role="tabpanel" aria-labelledby="amb-vipParameters">
                        <h4 class="text-center">VIP Parameters</h4>
                        <table class="table table-bordered" id="amb-vipParameters-table" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th>Parameter Name</th>
                                <th>Parameter Value</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>Parameter Name</th>
                                <th>Parameter Value</th>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright © Delaware Digital LLP 2019</span>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.content-wrapper -->

</div>
<!-- /#wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Bootstrap core JavaScript-->
<script src="<c:url value='/_ui-src/vendor/jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/_ui-src/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

<!-- Core plugin JavaScript-->
<script src="<c:url value='/_ui-src/vendor/jquery-easing/jquery.easing.min.js'/>"></script>

<!-- Page level plugin JavaScript-->
<script src="<c:url value='/_ui-src/vendor/datatables/jquery.dataTables.js'/>"></script>
<script src="<c:url value='/_ui-src/vendor/datatables/dataTables.bootstrap4.js'/>"></script>

<!-- Custom scripts for all pages-->
<script src="<c:url value='/_ui-src/js/sb-admin.js'/>"></script>
s
<!-- Demo scripts for this page-->
<script src="<c:url value='/_ui-src/js/datatables.min.js'/>"></script>
</body>

</html>
