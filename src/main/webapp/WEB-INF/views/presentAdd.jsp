<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Presents</title>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

</head>
<body>
<nav class="navbar navbar-light" style="background-color: #f71317">
    <a class="text-xs font-weight-bold mb-1" style="color: white"><spring:message code="pl.coderslab.christmass.merryChristmas"/> ${user.fullName}!</a>
    <form action="<c:url value="/logout"/>" method="post" class="form-inline">
        <button class="btn btn-outline-light my-2 my-sm-0 text-white" type="submit" value="Logout"><spring:message code="pl.coderslab.christmass.logout"/></button>
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
                                        <p class="text-xs font-weight-bold text-success text-uppercase mb-1 text-center">
                                            <spring:message code="pl.coderslab.christmass.homePage.1"/>
                                        </p>
                                        <div class="h5 mb-0 text-gray-800 text-center" id="total_income">
                                            <spring:message code="pl.coderslab.christmass.homePage.2"/>
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
                                        <p class="text-xs font-weight-bold text-success text-center text-uppercase mb-1">
                                            <spring:message code="pl.coderslab.christmass.santaPage.1"/>
                                        </p>
                                        <div class="h5 mb-0 text-gray-800 text-center">
                                            <spring:message code="pl.coderslab.christmass.santaPage.2"/>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
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
                                            <spring:message code="pl.coderslab.christmass.presentPage.1"/>
                                        </p>
                                        <div class="h5 mb-0 text-gray-800 text-center" id="total_costs">
                                            <spring:message code="pl.coderslab.christmass.presentPage.2"/>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-12 mb-4">

                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="h5 m-0 text-danger text-center">
                                    <spring:message code="pl.coderslab.christmass.helpSanta"/>
                                    </h6>
                            </div>
                            <div class="card-body">
                                <div class="text-left">
                                    <spring:message code="pl.coderslab.christmass.present.2" var="placeholder" />
                                    <form:form modelAttribute="present1" method="post">
                                    <div class="form-group shadow-textarea">
                                        <label for="present1">
                                            <spring:message code="pl.coderslab.christmass.present.1"/>
                                        </label>
                                        <form:textarea path="description" class="form-control z-depth-1"
                                                       id="present1" rows="3"
                                                       placeholder="${placeholder}"></form:textarea>

                                    </div>


                                    <div class="text-left">
                                        <form:form modelAttribute="present1" method="post">
                                        <div class="form-group shadow-textarea">
                                            <label for="exampleFormControlTextarea6">
                                                <spring:message code="pl.coderslab.christmass.present.3"/>
                                            </label>
                                            <form:textarea path="description2" class="form-control z-depth-1"
                                                           id="exampleFormControlTextarea6" rows="3"
                                                           placeholder="${placeholder}"></form:textarea>
                                        </div>


                                        <div class="text-left">
                                            <form:form modelAttribute="present1" method="post">
                                                <div class="form-group shadow-textarea">
                                                    <label for="exampleFormControlTextarea6">
                                                        <spring:message code="pl.coderslab.christmass.present.4"/>
                                                    </label>
                                                    <form:textarea path="description3" class="form-control z-depth-1"
                                                                   id="exampleFormControlTextarea6" rows="3"
                                                                   placeholder="${placeholder}"></form:textarea>
                                                </div>
                                                <spring:message code="pl.coderslab.christmass.presentBtn" var="presentSubmitBtn" />
                                                <input type="submit" value= "${presentSubmitBtn}"
                                                       class="btn btn-danger btn-block">
                                            </form:form>
                                            </form:form>
                                            </form:form>
                                        </div>
                                    </div>

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