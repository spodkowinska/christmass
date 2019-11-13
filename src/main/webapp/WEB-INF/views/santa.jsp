<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Become Santa!</title>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-body">
            <div class="form-group col-md-12">


                <c:choose>
                    <c:when test="${user.status == \"UNPAID\"}">

                        <h5><spring:message code="pl.coderslab.christmass.notpaid.1"/></h5>
                        <h5><spring:message code="pl.coderslab.christmass.notpaid.2"/></h5>
                        <h5><spring:message code="pl.coderslab.christmass.notpaid.3"/></h5>
                    </c:when>
                    <c:when test="${user.status == \"PAID\"}">
                        <h5><spring:message code="pl.coderslab.christmass.paid.1"/></h5>
                        <h5><spring:message code="pl.coderslab.christmass.paid.2"/></h5>
                        <h5><spring:message code="pl.coderslab.christmass.paid.3"/></h5>
                    </c:when>
                    <c:when test="${user.status == \"READY\"}">
                        <h5><spring:message code="pl.coderslab.christmass.ready.1"/></h5>
                        <h5><spring:message code="pl.coderslab.christmass.ready.2"/></h5>
                        <td>
                            <btn>
                                <a class="btn btn-group-toggle" href="/user/becomeSanta">Become someone's
                                    Santa!</a>
                            </btn>
                        </td>
                    </c:when>
                    <c:when test="${user.status == \"SANTA\"}">
                        <h5><spring:message code="pl.coderslab.christmass.santa.1"/>
                           <c:out value="${santaPair.get(userId)}"/>
                            <spring:message code="pl.coderslab.christmass.santa.2"/></h5>
                        <c:if test="${presents.containsKey(userId)}">
                            <h5><spring:message code="pl.coderslab.christmass.santa.3"/></h5>
                            <c:out value="${presents.get(userId)}"/>
                        </c:if>

                    </c:when>

                </c:choose>


            </div>
        </div>
    </div>
</div>
</body>
</html>
