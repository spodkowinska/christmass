<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en" xmlns:form="http://www.w3.org/1999/xhtml">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Register</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<%--    <link href="<c:url value="/WEB-INF/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" type="text/css">--%>

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
<%--    <link href="<c:url value="/WEB-INF/css/sb-admin.css" />" rel="stylesheet">--%>

</head>


<body class="bg-dark">
<form:form modelAttribute="user" method="post">
<div class="container">
    <div class="card card-register mx-auto mt-5">
        <div class="card-header">Register an Account ${pageContext.request.contextPath} </div>
        <div class="card-body">
            <form>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <form:input path="firstName" type="text" id="firstName" class="form-control" placeholder="First name"
                                       required="required" autofocus="autofocus"/>
                                    <form:errors path="firstName" css="color:red"/>
                                <label for="firstName">First name</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <form:input path="lastName" type="text" id="lastName" class="form-control" placeholder="Last name"
                                       required="required"/>
                                <form:errors path="lastName" css="color:red"/>
                                <label for="lastName">Last name</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <form:input path="email" type="email" id="inputEmail" class="form-control" placeholder="Email address"
                               required="required"/>
                        <form:errors path="email" css="color:red"/>
                        <label for="inputEmail">Email address</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <form:input path="password" type="password" id="inputPassword" class="form-control" placeholder="Password"
                                       required="required"/>
                                <form:errors path="password" css="color:red"/>
                                <label for="inputPassword">Password</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input type="password" id="confirmPassword" class="form-control"
                                       placeholder="Confirm password" required="required">
                                <label for="confirmPassword">Confirm password</label>
                            </div>
                        </div>
                    </div>
                </div>
                <input type="submit" class="btn btn-primary btn-block">Register</input>
<%--                <a class="btn btn-primary btn-block" href="/login">Register</a>--%>
            </form>
            <div class="text-center">
                <a class="d-block small mt-3" href="/login">Login Page</a>
                <a class="d-block small" href="/forgotPassword">Forgot Password?</a>
            </div>
        </div>
    </div>
</div>
</form:form>

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>
