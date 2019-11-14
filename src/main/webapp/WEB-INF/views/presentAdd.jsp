<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fotm" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
                                        <p class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                            Home
                                        </p>
                                        <div class="mb-0 text-gray-800">
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


                    <div class="col-md-6 mb-4" onclick="javascript:document.location.href='/user/santa'">
                        <div class="highlightOnHover card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <p class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                            Whose Santa are you?
                                        </p>
                                        <div class="mb-0 text-gray-800">
                                            Check it out
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="p-5 col-md-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 text-danger">
                                    Help your Santa by preparing him some hints</h6>
                            </div>
                            <div class="card-body">
                                <div class="text-left">
                                    <form:form modelAttribute="present1" method="post">
                                    <div class="form-group shadow-textarea">
                                        <label for="exampleFormControlTextarea6">Present 1</label>
                                        <form:textarea path="description" class="form-control z-depth-1"
                                                       id="exampleFormControlTextarea6" rows="3"
                                                       placeholder="What's it that you wish for?"></form:textarea>
                                    </div>


                                    <div class="text-left">
                                        <form:form modelAttribute="present2" method="post">
                                        <div class="form-group shadow-textarea">
                                            <label for="exampleFormControlTextarea6">Present 2</label>
                                            <form:textarea path="description" class="form-control z-depth-1"
                                                           id="exampleFormControlTextarea6" rows="3"
                                                           placeholder="What's your biggest desire?"></form:textarea>

                                        </div>


                                        <div class="text-left">
                                            <form:form modelAttribute="present3" method="post">
                                                <div class="form-group shadow-textarea">
                                                    <label for="exampleFormControlTextarea6">Present 3</label>
                                                    <form:textarea path="description" class="form-control z-depth-1"
                                                                   id="exampleFormControlTextarea6" rows="3"
                                                                   placeholder="What sparks joy in ya?"></form:textarea>
                                                    <form:errors path="description" element="div"
                                                                 cssStyle="color:red"/>
                                                </div>


                                                <input type="submit" value="I want that!"
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