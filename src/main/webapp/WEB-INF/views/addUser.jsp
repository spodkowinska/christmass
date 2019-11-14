<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sandracoderslab
  Date: 29/10/2019
  Time: 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add user</title>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

</head>
<body>
<div class="container">


    <div class="card mt-4">
        <div class="card-body">
            <a href="/admin/usersList" class="btn btn-primary">UsersList</a>
        </div>
    </div>

    <div class="card mt-4">
        <div class="card-body">
            <form:form method="post" modelAttribute="user">

            <div class="row">

                <div class="form-group col-md-6">
                    <label for="firstName">First Name</label>
                    <form:input path="firstName" class="form-control" id="firstName"/>
                    <form:errors path="firstName" element="div" cssClass="error"/>
                </div>

                <div class="form-group col-md-6">
                    <label for="lastName">Last Name</label>
                    <form:input path="lastName" class="form-control" id="lastName"/>
                    <form:errors path="lastName" element="div" cssClass="error"/>
                </div>

                <div class="form-group col-md-6">
                    <label for="status">Status</label>
                    <form:select path="status" class="form-control" id="status">
                        <form:option value="UNPAID"/>
                        <form:option value="PAID"/>
                    </form:select>
                    <form:errors path="status" element="div" cssClass="error"/>
                </div>

                <div class="form-group col-md-6">
                    <label for="email">Email</label>
                    <form:input path="username" class="form-control" id="email"/>
                    <form:errors path="username" element="div" cssClass="error"/>
                </div>

                <div class="form-group col-md-6">
                    <label for="password">Password</label>
                    <form:input path="password" class="form-control" id="password"/>
                    <form:errors path="password" element="div" cssClass="error"/>
                </div>

                <div class="form-group col-md-6">
                    <label for="password2">Repeat password</label>
                    <input type="password" class="form-control" id="password2" name="password2"/>
                </div>

                <div class="align-content-center">
                    <div class="form-group col-md-6 align-content-center">
                        <input type="submit" value="Add user" class="btn btn-primary">
                    </div>
                </div>
                </form:form>

            </div>
        </div>

    </div>
</div>
</body>
</html>
