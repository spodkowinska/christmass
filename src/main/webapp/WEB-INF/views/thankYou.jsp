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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>
<body style="background-image: url('/img/207.jpg')">
<div class="container">
    <div class="row text-center">
        <div class="col-sm-6 col-sm-offset-3">
            <br><br> <h2 style="color:#0fad00"></h2>
<%--            <img src='<c:url value="/img/gift.jpg"></c:url>--%>
            <h3><spring:message code="pl.coderslab.christmass.merryChristmas"/>!</h3>
            <p style="font-size:20px;color:#5C5C5C;"><spring:message code="pl.coderslab.christmass.thankyou"/></p>
             <a href="/login" class="btn btn-success"><spring:message code="pl.coderslab.christmass.loginhereAgain"/></a>  
            <br><br>
        </div>

    </div>
</div>
</body>
</html>
