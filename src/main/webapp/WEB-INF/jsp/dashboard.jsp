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

<nav class="navbar navbar-expand static-top">
    <a class="navbar-brand mr-1" href="/"><img src=<c:url value='/_ui-src/resources/amba_logo.webp'/> width=150px></a>

    <button class="btn btn-link btn-sm order-1 order-sm-0 amb-text-colour-secondary" id="sidebarToggle" href="/admin">
        <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar -->
    <search:vipID/>

    <nav:navbar/>
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
                <div class="card-body tab-content" id="nav-tabContent">

                    <!-- Please Search for VIP ID-->
                    <div class="col-12 text-center" id="user-instruction">
                        <h1>Please use the bar to find a VIP ID</h1>
                    </div>
                    <!-- Current State -->
                    <div class="tab-pane fade active table-responsive datatable" id="amb-currentState">
                        <h4 class="text-center">Current State</h4>
                        <table class="table table-bordered" id="currentState" width="100%" cellspacing="0">
                        </table>
                    </div>

                    <!-- Current State -->
                    <div class="tab-pane fade active table-responsive datatable" id="amb-example">
                        <h4 class="text-center">Sleep State</h4>
                        <table class="table table-bordered" id="exampleTable" width="100%" cellspacing="0">
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

<!-- Demo scripts for this page-->
<script src="<c:url value='/_ui-src/js/datatables.js'/>"></script>
</body>

</html>
