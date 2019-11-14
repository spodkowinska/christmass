<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin</title>
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
<nav class="navbar navbar-light" style="background-color: #f71317">
    <a class="text-xs font-weight-bold mb-1" style="color: white">Very Merry Christmas ${user.fullName}!</a>
    <form action="<c:url value="/logout"/>" method="post" class="form-inline">
        <button class="btn btn-outline-light my-2 my-sm-0 text-white" type="submit" value="Logout">Logout</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</nav>
<div class="container">
    <div class="container">

    <div class="card mt-4">
        <div class="card-body col-md-3 inline">
            <a href="/admin/addUser" class="btn btn-primary">Add new user</a>
        </div>

        <div class="card-body col-md-3 inline">
            <a href="/admin/addUser" class="btn btn-primary">Add new event</a>
        </div>

        <div class="card-body col-md-3 inline">
            <a href="/admin/sendMessage" class="btn btn-primary">Send new message</a>
        </div>
    </div>



            <div class="card mt-4">
                <div class="card-body">
                    <table class="table table-hover">
                        <tr>
                            <th>Person</th>
                            <th>Change Status: </br>UNPAID/PAID/READY/SANTA</th>
                            <th>Presents</th>
                            <th>Delete user</th>
                        </tr>
                        <c:forEach items="${users}" var="user">

                            <tr>
                                <td>${user.fullName}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${user.status eq \"UNPAID\"}">
                                            <a class="btn btn-primary" href="/admin/changeStatus/${user.id}">UNPAID</a>
                                        </c:when>
                                        <c:when test="${user.status eq \"PAID\"}">
                                            <a class="btn btn-primary" href="/admin/changeStatus/${user.id}">PAID</a>
                                        </c:when>
                                        <c:when test="${user.status eq \"READY\"}">
                                            <a class="btn btn-primary" href="/admin/changeStatus/${user.id}">READY</a>
                                        </c:when>
                                        <c:when test="${user.status eq \"SANTA\"}">
                                            <a class="btn btn-primary" href="/admin/changeStatus/${user.id}">SANTA</a>
                                        </c:when>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${user.listOfPresents.size()>0}">
                                            <p class="btn btn-success">CREATED</p>
                                        </c:when>
                                        <c:otherwise>
                                            <p class="btn btn-warning">NOT YET</p>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <a class="btn btn-danger" href="#"
                                       onclick="confirmDelete(${user.id}, '${user.fullName}')">
                                        DELETE</a>
                                </td>
                            </tr>
                        </c:forEach>

                    </table>
                    <a class="btn btn-danger" href="/admin/joinInPairs">Join in Pairs!</a>
                </div>
            </div>

        </div>
    </div>
</body>
</html>
