<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Become Santa!</title>
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


                    <div class="col-md-6 mb-4" onclick="javascript:document.location.href='/user/home'">
                        <div class="highlightOnHover card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <p class="text-xs font-weight-bold text-success text-uppercase mb-1 text-center">
                                            Home
                                        </p>
                                        <div class="h5 mb-0 text-gray-800 text-center" id="total_income">
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


                    <div class="col-md-6 mb-4" onclick="javascript:document.location.href='/user/addPresent'">
                        <div class="highlightOnHover card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <p class="text-xs font-weight-bold text-success text-uppercase mb-1 text-center">
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


                    <div class="container mt-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="form-group col-md-12 align-content-center">


                                    <c:choose>
                                        <c:when test="${user.status == \"UNPAID\"}">

                                            <p><spring:message code="pl.coderslab.christmass.notpaid.1"/></p>
                                            <p><spring:message code="pl.coderslab.christmass.notpaid.2"/></p>
                                            <p><spring:message code="pl.coderslab.christmass.notpaid.3"/></p>
                                        </c:when>
                                        <c:when test="${user.status == \"PAID\"}">
                                            <h6><spring:message code="pl.coderslab.christmass.paid.1"/></h6>
                                            <p><br><spring:message code="pl.coderslab.christmass.paid.2"/><br>
                                                <spring:message code="pl.coderslab.christmass.paid.3"/></p>
                                        </c:when>
                                        <c:when test="${user.status == \"READY\"}">
                                            <p><spring:message code="pl.coderslab.christmass.ready.1"/></p>
                                            <p><spring:message code="pl.coderslab.christmass.ready.2"/></p>
                                            <td>
                                                <btn>
                                                    <a class="btn btn-danger btn-block" href="/user/becomeSanta">Become
                                                        someone's Santa!</a>
                                                </btn>
                                            </td>
                                        </c:when>
                                        <c:when test="${user.status == \"SANTA\"}">
                                            <p><spring:message code="pl.coderslab.christmass.santa.1"/>
                                                <b><c:out value="${santaPair.get(userId)}"/></b>
                                                <spring:message code="pl.coderslab.christmass.santa.2"/></p><br>
                                            <c:if test="${presents.containsKey(userId)}">
                                                <p><spring:message code="pl.coderslab.christmass.santa.3"/>
                                                <c:out value="${presents.get(userId)}"/> </p>
                                            </c:if>

                                        </c:when>

                                    </c:choose>

                                </div>
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
