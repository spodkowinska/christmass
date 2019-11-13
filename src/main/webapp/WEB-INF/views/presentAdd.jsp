<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fotm" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
</head>
<body>

<div class="card-body">

    <div class="p-5">
        <header>Help your Santa by preparing him some hints</header>
<%--        <form method="post" action="/user/add">--%>

            <form action="/user/add"  method="post">
                <p>
                    Name: <input type="text" name="present1">
                </p>
                <p>
                    Name: <input type="text" name="present2">
                </p>
                <p>
                    <input type="submit" value="Submit"/>
                </p>
            </form>

<%--            <label for="present1">Present 1</label>--%>
<%--            <div class="form-group row">--%>
<%--                <div class="col-sm-6 mb-3 mb-sm-0">--%>
<%--                    <input type="text" placeholder="What's it that you wish for?" name="present1" id="present1"/>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <label for="present2">Present 2</label>--%>
<%--            <div class="form-group row">--%>
<%--                <div class="col-sm-6 mb-3 mb-sm-0">--%>
<%--                    <input type="text" placeholder="What's your biggest desire?" name="present2" id="present2"/>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <label for="present3">Present 3</label>--%>
<%--            <div class="form-group row">--%>
<%--                <div class="col-sm-6 mb-3 mb-sm-0">--%>
<%--                    <input type="text" placeholder="What sparks joy in ya?" name="present3" id="present3"/>--%>
<%--                </div>--%>
<%--            </div>--%>


<%--            <input type="submit" value="Gimme that" class="btn btn-primary btn-block">--%>
<%--        </form>--%>
    </div>

</div>

</body>
</html>