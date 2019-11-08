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
        <form:form modelAttribute="present1" method="post">

            <label for="present1">Present 1</label>
            <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    <form:textarea path="description" placeholder="What's your biggest desire?" id="present1"/>
                    <form:errors path="description" element="div" cssStyle="color:red"/>
                </div>
            </div>


            <form:form modelAttribute="present2" method="post">

                <label for="present2">Present 2</label>
                <div class="form-group row">
                    <div class="col-sm-6 mb-3 mb-sm-0">
                        <form:textarea path="description" placeholder="What's your biggest desire?" id="present2"/>
                        <form:errors path="description" element="div" cssStyle="color:red"/>
                    </div>
                </div>


                <form:form modelAttribute="present3" method="post">

                    <label for="present3">Present 3</label>
                    <div class="form-group row">
                        <div class="col-sm-6 mb-3 mb-sm-0">
                            <form:textarea path="description" placeholder="What's your biggest desire?" id ="present3"/>
                            <form:errors path="description" element="div" cssStyle="color:red"/>
                        </div>
                    </div>


                    <input type="submit" value="I want that!" class="btn btn-primary btn-block">
                </form:form>
            </form:form>
        </form:form>
    </div>

</div>

</body>
</html>