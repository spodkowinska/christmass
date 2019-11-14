<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: sandracoderslab
  Date: 14/11/2019
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Send Message</title>
</head>
<body>

<div class="card">
    <div class="card-body">
        <a href="/admin/usersList" class="btn btn-primary">Admin home</a>
    </div>
</div>

<div class="card mt-4">
    <div class="card-body">
        <form:form method="post" modelAttribute="message">

        <div class="row">

            <div class="form-group col-md-6">
                <label for="title">Title</label>
                <form:input path="title" class="form-control" id="title"/>
            </div>

            <div class="row">
                <div class="form-group col-md-6">
                    <input type="submit" value="Send message" class="btn btn-success">
                </div>
            </div>
            </form:form>
        </div>
    </div>

</div>
</div>
</body>
</html>
