<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tables" tagdir="/WEB-INF/tags/tables" %>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/nav" %>
<%@ taglib prefix="search" tagdir="/WEB-INF/tags/search" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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

<div class="position-relative top-header">
    <nav class="navbar navbar-expand static-top position-fixed bg-white amb-navbar-top">
        <a class="navbar-brand mr-1" href="/"><img src=
                                                   <c:url value='/_ui-src/resources/amba_logo.webp'/> width=150px></a>

        <button class="btn btn-link btn-sm order-1 order-sm-0 amb-text-colour-secondary" id="sidebarToggle"
                href="/admin">
            <i class="fas fa-bars"></i>
        </button>

        <!-- Navbar -->
        <search:vipID/>
    </nav>
</div>
<div id="wrapper">

    <!-- Sidebar -->
    <div class="sidebar">
        <ul class="navbar-nav position-fixed">
            <li class="nav-item">
                <a class="nav-link" href="#usersLink">
                    <span>Users</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#currentStateLink">
                    <span>Current State</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#rulesLink">
                    <span>Rules</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#paramsLink">
                    <span>Params</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#notificationsLink">
                    <span>Notification History</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#rawDataLink">
                    <span>Raw Data</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#devicesLink">
                    <span>Devices</span>
                </a>
            </li>
        </ul>
    </div>
    <div id="content-wrapper">

        <div class="container-fluid">

            <!-- DataTables Start -->

            <!-- VIP Tables Navigation Tabs -->
            <div class="card mb-3">
                <div class="card-body tab-content" id="nav-tabContent">
                    <!-- Users -->
                    <div class="border-bottom pb-5 tab-pane fade active show table-responsive datatable"
                         id="amb-users">
                        <a class="anchor" id="usersLink"></a>
                        <h4 class="text-center hide">Users</h4>
                        <table class="table table-bordered" id="users" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th>No data found for this VIP ID</th>
                            </tr>
                            </thead>
                        </table>
                    </div>

                    <!-- Current State -->
                    <div class="border-bottom pb-5 tab-pane fade active show table-responsive datatable mt-5"
                         id="amb-currentState">
                        <a class="anchor" id="currentStateLink"></a>
                        <h4 class="text-center hide">Current State</h4>
                        <table class="table table-bordered" id="currentState" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th>No data found for this VIP ID</th>
                            </tr>
                            </thead>
                        </table>
                    </div>

                    <!-- Rules -->
                    <div class="border-bottom pb-5 tab-pane fade active show table-responsive datatable mt-5"
                         id="amb-rules">
                        <a class="anchor" id="rulesLink"></a>
                        <h4 class="text-center hide">Rules</h4>
                        <table class="table table-bordered" id="rules" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th>No data found for this VIP ID</th>
                            </tr>
                            </thead>
                        </table>
                    </div>

                    <!-- Paramaters -->
                    <div class="border-bottom pb-5 tab-pane fade active show table-responsive datatable mt-5"
                         id="amb-params">
                        <a class="anchor" id="paramsLink"></a>
                        <h4 class="text-center hide">Params</h4>
                        <table class="table table-bordered" id="params" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th>No data found for this VIP ID</th>
                            </tr>
                            </thead>
                        </table>
                    </div>

                    <!-- Notification History -->
                    <div class="border-bottom pb-5 tab-pane fade active show table-responsive datatable mt-5"
                         id="amb-notificationHistory">
                        <a class="anchor" id="notificationsLink"></a>
                        <h4 class="text-center hide">Notification History</h4>
                        <table class="table table-bordered" id="notificationHistory" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th>No data found for this VIP ID</th>
                            </tr>
                            </thead>
                        </table>
                    </div>

                    <!-- Raw Data -->
                    <div class="border-bottom pb-5 tab-pane fade active show table-responsive datatable mt-5"
                         id="amb-rawData">
                        <a class="anchor" id="rawDataLink"></a>
                        <h4 class="text-center hide">Raw Data</h4>
                        <table class="table table-bordered" id="rawData" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th>No data found for this VIP ID</th>
                            </tr>
                            </thead>
                        </table>
                    </div>

                    <!-- Devices -->
                    <div class="tab-pane fade active show table-responsive datatable mt-5"
                         id="amb-devices">
                        <a class="anchor" id="devicesLink"></a>
                        <h4 class="text-center hide">Devices</h4>
                        <table class="table table-bordered" id="devices" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th>No data found for this VIP ID</th>
                            </tr>
                            </thead>
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
                    <span>Copyright &#169; Delaware Digital LLP 2019</span>
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

<!-- Demo scripts for this page-->
<script src="<c:url value='/_ui-src/js/datatables.js'/>"></script>
</body>

</html>
