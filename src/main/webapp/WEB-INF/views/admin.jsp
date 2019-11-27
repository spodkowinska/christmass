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
                window.location.href = "${pageContext.request.contextPath}/admin/deleteUser/" + id;
            }
        }
    </script>
</head>
<c:if test="${param.pairs eq 'true'}">
<body onload="iziToast.success({title: 'Połączono poprawnie!',message: 'Już można losować'});">
</c:if>
<c:if test="${param.pairs eq 'false'}">
<body onload="iziToast.warning({title: 'Wystąpił błąd!',message: 'Sprawdź, co poszło nie tak.'});">
</c:if>
<nav class="navbar navbar-light" style="background-color: #f71317">
    <a class="text-xs font-weight-bold mb-1" style="color: white">Very Merry Christmas ${user.fullName}!</a>
    <form action="<c:url value="${pageContext.request.contextPath}/logout"/>" method="post" class="form-inline">
        <button class="btn btn-outline-light my-2 my-sm-0 text-white" type="submit" value="Logout">Logout</button>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</nav>
<%--Language : <a href="?language=en">EN</a>|<a href="?language=pl">PL</a>--%>
<div class="container">
    <div class="container justify-content-center">

    <div class="card mt-4">
        <div class="card-body">
        <div class="row">
        <div class=" col-md-5">
            <a href="${pageContext.request.contextPath}/admin/addUser" class="btn btn-success">Add new user</a>
        </div>

        <div class=" col-md-3">
            <a href="${pageContext.request.contextPath}/user/home" class="btn btn-success text-center">User Home Panel</a>
        </div>

        <div class=" col-md-4 ">
            <a href="${pageContext.request.contextPath}/admin/sendMessage" class="btn btn-success float-right">Send new message</a>
        </div>
    </div>
    </div>
    </div>



            <div class="card mt-4">
                <div class="card-body">
                    <table class="table table-hover">
                        <tr>
                            <th>Person</th>
                            <th>Event</th>
                            <th>Change Status: </br>UNPAID/PAID/READY/SANTA</th>
                            <th>Presents</th>
                            <th>Delete user</th>
                        </tr>
                        <c:forEach items="${users}" var="user">

                            <tr>
                                <td>${user.fullName}</td>
                                <td><c:forEach items="${user.event}" var="event"> ${event.id}<br></c:forEach></td>
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
                                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/admin/changeStatus/${user.id}">SANTA</a>
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
                    <form method="get" action="${pageContext.request.contextPath}/admin/joinInPairs" >
                            <select name="event">
                                <c:forEach items="${events}" var="event" >
                                    <option value="${event.id}" >${event.name}</option>
                                </c:forEach>
                            </select>
                        <input type="submit" class="btn btn-danger" value="Join in Pairs!">
                    </form>
                </div>
            </div>

        </div>
    </div>
</body>
</html>
