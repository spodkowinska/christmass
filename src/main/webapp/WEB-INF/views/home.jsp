<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ChristmassPlanner</title>

    <!-- Custom fonts for this template -->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="../vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
</head>
<body>

<!-- Page Wrapper -->
<div id="wrapper">

    <div data-include="menu"></div>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">


            <!-- Begin Page Content -->
            <div class="container-fluid">

                <br/>

                <div class="row">


                    <div class="col-md-6 mb-4">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <a href="/becomeSanta" class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                            Whose Santa are you?
                                        </a>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800" id="total_income">
                                            Check it out...
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-6 mb-4">
                        <div class="card border-left-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                            What's there for you?
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800" id="total_costs">
                                            Give some advice to your Santa!
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                    <!-- Illustrations -->
                    <div class="col-lg-12 mb-4">

                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Welcome!</h6>
                            </div>
                            <div class="card-body">
                                <div class="text-center">
                                    <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;"
                                         src="../img/lady.png"
                                         alt="">
                                </div>
                                <p>In time there will be more information about our event. Dates, places and much more. </p>
                                <p></p>

                            </div>
                            </div>
                        </div>

                    </div>


<!--                                        <div class="col-xl-4 col-lg-5">-->
<!--                                            <div class="card shadow mb-4">-->
<!--                                                &lt;!&ndash; Card Header - Dropdown &ndash;&gt;-->
<!--                                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">-->
<!--                                                    <h6 class="m-0 font-weight-bold text-primary">Task statuses</h6>-->
<!--                                                </div>-->
<!--                                                &lt;!&ndash; Card Body &ndash;&gt;-->
<!--                                                <div class="card-body">-->
<!--                                                    <div class="chart-pie pt-4 pb-2">-->
<!--                                                        <div class="chartjs-size-monitor">-->
<!--                                                            <div class="chartjs-size-monitor-expand">-->
<!--                                                                <div class=""></div>-->
<!--                                                            </div>-->
<!--                                                            <div class="chartjs-size-monitor-shrink">-->
<!--                                                                <div class=""></div>-->
<!--                                                            </div>-->
<!--                                                        </div>-->
<!--                                                        <canvas id="myPieChart" width="387" height="245" class="chartjs-render-monitor"-->
<!--                                                                style="display: block; width: 387px; height: 245px;"></canvas>-->
<!--                                                    </div>-->
<!--                                                    <div class="mt-4 text-center small">-->
<!--                                        <span class="mr-2">-->
<!--                                          <i class="fas fa-circle text-primary"></i> Direct-->
<!--                                        </span>-->
<!--                                                        <span class="mr-2">-->
<!--                                          <i class="fas fa-circle text-success"></i> Social-->
<!--                                        </span>-->
<!--                                                        <span class="mr-2">-->
<!--                                          <i class="fas fa-circle text-info"></i> Referral-->
<!--                                        </span>-->
<!--                                                    </div>-->
<!--                                                </div>-->
<!--                                            </div>-->
<!--                                        </div>-->

                </div>

            </div>
        </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <script src="../vendor/chart.js/Chart.min.js"></script>
    <script src="../js/chart-pie.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>


    <script src="../js/ownFunctions.js"></script>

    <script>

        $(document).ready(function () {
            $.ajax({
                url: API_URL + "dashboard",
                type: 'get',
                success: function (data) {
                    $("#total_costs").text (data.total_costs + " PLN");
                    $("#total_income").text (data.total_income + " PLN");
                    $("#total_orders").text (data.total_orders);
                    console.log(data);
                }
            });
        });
    </script>

</body>
</html>