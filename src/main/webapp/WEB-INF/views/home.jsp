<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<%--    <meta charset="UTF-8">--%>
    <title>Home</title>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

</head>
<body>
<nav class="navbar navbar-light" style="background-color: #f71317">
    <a class="text-xs font-weight-bold mb-1" style="color: white">Very Merry Christmas ${user.fullName}!</a>
    <form action="<c:url value="/logout"/>" method="post" class="form-inline">
        <button class="btn btn-outline-light my-2 my-sm-0 text-white" type="submit" value="Logout">Logout</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</nav>

<div class="container">

    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Begin Page Content -->
            <div class="container-fluid">


                <br/>

                <div class="row">
                    <div class="col-md-4 mb-4" onclick="javascript:document.location.href='/user/home'">
                        <div class="highlightOnHover card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <p class="text-xs font-weight-bold text-center text-success text-uppercase mb-1">
                                            Home
                                        </p>
                                        <div class="mb-0 text-center text-gray-800">
                                            Come back to main site
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 mb-4" onclick="javascript:document.location.href='/user/santa'">
                        <div class="highlightOnHover card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <p class="text-xs font-weight-bold text-center text-success text-uppercase mb-1">
                                            Whose Santa are you?
                                        </p>
                                        <div class="h5 mb-0 text-gray-800 text-center" id="total_income">
                                            Check it out
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-4 mb-4" onclick="javascript:document.location.href='/user/addPresent'">
                        <div class="highlightOnHover card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <p class="text-xs font-weight-bold text-center text-success text-uppercase mb-1">
                                            What's there for you?
                                        </p>
                                        <div class="h5 mb-0 text-gray-800 text-center" id="total_costs">
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
                                <h6 class="m-0 font-weight-bold text-danger">Ho ho ho ho!</h6>
                            </div>
                            <div class="card-body">
                                <div class="text-center">
                                    <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 30rem;"
                                         src="/img/Merry-Christmas.jpg">
                                </div>
                                <p>My dearest family and friends!<br> This time of the year as always brings us all together.
                                    This year again we will be meeting to celebrate!
                                    No matter whether it is Christmass, Hanukkah or Newtonmas we meet, drink, feast, play and catch up on this years on-goings.
                                    <br>In time there will be more information about our event so please come in here to stay in touch.


                                    Thist year we are meeting at Mila 100 m 150 01-100 Warsaw at 20th December 5pm. More info coming soon!
                                    </p>
                            </div>
<%--                        <br>--%>
<%--                            <c:if test="${}"--%>
<%--                            <div class="card shadow mb-4">--%>
<%--                                <div class="card-header py-3">--%>
<%--                                    <h6 class="m-0 font-weight-bold text-danger"></h6>--%>
<%--                                </div>--%>
<%--                                <div class="card-body">--%>
<%--                                    <div class="text-center">--%>
<%--                                        <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 30rem;"--%>
<%--                                             src="/img/Merry-Christmas.jpg">--%>
<%--                                    </div>--%>
<%--                                    <p>My dearest family and friends!<br> This time of the year as always brings us all together.--%>
<%--                                        This year again we will be meeting to celebrate!--%>
<%--                                        No matter whether it is Christmass, Hanukkah or Newtonmas we meet, drink, feast, play and catch up on this years on-goings.--%>
<%--                                        <br>In time there will be more information about our event so please come in here to stay in touch.--%>


<%--                                        Thist year we are meeting at Mila 100 m 150 01-100 Warsaw at 20th December 5pm. More info coming soon!--%>
<%--                                    </p>--%>
<%--                                </div>--%>


                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>