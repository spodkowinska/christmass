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
    <div class="card-body">

        <div class="p-5">

            <div class="p-5">
                <div class="card-body">

                    <div class="p-5">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-danger">
                                    Help your Santa by preparing him some hints</h6>
                            </div>
                            <div class="card-body">
                                <div class="text-left">
                                    <form:form modelAttribute="present1" method="post">
                                    <div class="form-group shadow-textarea">
                                        <label for="exampleFormControlTextarea6">Present 1</label>
                                        <form:textarea path="description" class="form-control z-depth-1"
                                                       id="exampleFormControlTextarea6" rows="3"
                                                       placeholder="What's your biggest desire?"></form:textarea>
                                        <form:errors path="description" element="div" cssStyle="color:red"/>


                                        <div class="text-left">
                                            <form:form modelAttribute="present2" method="post">
                                            <div class="form-group shadow-textarea">
                                                <label for="exampleFormControlTextarea6">Present 2</label>
                                                <form:textarea path="description" class="form-control z-depth-1"
                                                               id="exampleFormControlTextarea6" rows="3"
                                                               placeholder="What's your biggest desire?"></form:textarea>
                                                <form:errors path="description" element="div" cssStyle="color:red"/>
                                            </div>


                                            <div class="text-left">
                                                <form:form modelAttribute="present3" method="post">
                                                    <div class="form-group shadow-textarea">
                                                        <label for="exampleFormControlTextarea6">Present 3</label>
                                                        <form:textarea path="description" class="form-control z-depth-1"
                                                                       id="exampleFormControlTextarea6" rows="3"
                                                                       placeholder="What's your biggest desire?"></form:textarea>
                                                        <form:errors path="description" element="div"
                                                                     cssStyle="color:red"/>
                                                    </div>


                                                    <input type="submit" value="I want that!"
                                                           class="btn btn-danger btn-block">
                                                </form:form>
                                                </form:form>
                                                </form:form>
                                            </div>
                                        </div>


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
                                        <%--    </div>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>