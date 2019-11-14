<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sandracoderslab
  Date: 14/11/2019
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Send Message</title>
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

<div class="card mt-4">
    <div class="card-body">
        <a href="/admin/usersList" class="btn btn-primary">Admin home</a>
    </div>
</div>

<div class="card mt-4">
    <div class="card-body">
        <form:form method="post" modelAttribute="message">

        <div class="row">

            <div class="form-group col-md-12">
                <label for="title">Title</label>
                <form:input path="title" class="form-control" id="title"/>
            </div>
            <div class="form-group col-md-12">
                <label for="messageBody">Message</label>
                <form:textarea path="messageBody" class="form-control" id="messageBody"/>
            </div>

            <div class="row">
                <div class="form-group col-md-6">
                    <input type="submit" value="Send message" class="btn btn-success">
                </div>
            </div>
            </form:form>
        </div>
    </div>

</div>
</div>
</body>
</html>
