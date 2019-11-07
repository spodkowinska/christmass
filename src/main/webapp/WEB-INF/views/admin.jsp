<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sandracoderslab
  Date: 07/11/2019
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>admin</title>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
</head>
<body>

<div class="container">

    <header>Users</header>

    <div class="card">
        <div class="card-body">
            <a href="/user/add" class="btn btn-primary">Add new user</a>
        </div>
    </div>

    <div class="card mt-4">
        <div class="card-body">
            <table class="table table-hover">
                <tr>
                    <th>Title</th>
                    <th>Rating</th>
                    <th>Publisher</th>
                    <th style="width:17%">Actions</th>
                </tr>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.fullName}</td>
                        <td>${user.hasPaid}</td>
                        <td>
                            <a class="btn btn-primary" href="/user/haspaid/${user.id}">Change paid status</a>
                            <a class="btn btn-danger" href="#" onclick="confirmDelete(${book.id}, '${book.title}')">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

</div>

</body>
</html>
