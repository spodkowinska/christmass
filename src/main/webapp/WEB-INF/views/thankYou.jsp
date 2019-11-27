<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%--
  Created by IntelliJ IDEA.
  User: sandracoderslab
  Date: 11/11/2019
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thank You</title>
<%--    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">--%>
</head>
<body style="background-image: url('/img/207.jpg')">
<div class ="card body grey">
<div class="card">
    <div class="card-body">
        <h4><spring:message code="pl.coderslab.christmass.thankyou"/></h4>
    </div>
</div>

<div class="card">
    <div class="card-body">
        <a href="/login"><spring:message code="pl.coderslab.christmass.logIn"/></a>
    </div>
</div>
</div>
</body>
</html>
