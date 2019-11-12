<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
    <script>
        function confirmDelete(id, name) {
            if (confirm("Do you want to delete user '" + name + "'?")) {
                window.location.href = "/admin/deleteUser/" + id;
            }
        }
    </script>
</head>
<body>
<form action="<c:url value="/logout"/>" method="post">
    <input class="fa fa-id-badge" type="submit" value="Wyloguj">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
<div class="container">

    <header>Users</header>

    <div class="card">
        <div class="card-body">
            <a href="/admin/addUser" class="btn btn-primary">Add new user</a>
        </div>
    </div>

    <div class="card mt-4">
        <div class="card-body">
            <table class="table table-hover">
                <tr>
                    <th>Person</th>
                    <th>Change paid status</th>
                    <th>Unpaid/Paid/Ready/Santa</th>
                    <th>Presents</th>
                    <th>Delete user</th>
                </tr>
                <c:forEach items="${users}" var="user">

                    <tr>
                        <td>${user.fullName}</td>

                        <td>
                            <c:choose>
                                <c:when test="${user.hasPaid=='true'}">
                                    <a class="btn btn-success" href="/admin/hasPaid/${user.id}">Paid</a>
                                </c:when>
                                <c:otherwise>
                                    <a class="btn btn-warning" href="/admin/hasPaid/${user.id}">Unpaid</a>
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${user.status eq \"unpaid\"}">
                                    <a class="btn btn-primary" href="/admin/changeStatus/${user.id}">Unpaid</a>
                                </c:when>
                                <c:when test="${user.status eq \"paid\"}">
                                    <a class="btn btn-primary" href="/admin/changeStatus/${user.id}">Paid</a>
                                </c:when>
                                <c:when test="${user.status eq \"ready\"}">
                                    <a class="btn btn-primary" href="/admin/changeStatus/${user.id}">Ready</a>
                                </c:when>
                                <c:when test="${user.status eq \"santa\"}">
                                    <a class="btn btn-primary" href="/admin/changeStatus/${user.id}">Santa</a>
                                </c:when>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${user.listOfPresents.size()>0}">
                                    <p class="btn btn-success" >Created</p>
                                </c:when>
                                <c:otherwise>
                                    <p class="btn btn-warning" >Not yet</p>
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <a class="btn btn-danger" href="#" onclick="confirmDelete(${user.id}, '${user.fullName}')">
                                Delete</a>
                        </td>
                    </tr>
                </c:forEach>

            </table>
            <a class="btn btn-danger" href="/admin/joinInPairs">Join in Pairs!</a>
        </div>
    </div>

</div>

</body>
</html>
