<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Login</title>

  <!-- Custom fonts for this template-->
<%--  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">--%>

<%--  <!-- Custom styles for this template-->--%>
<%--  <link href="../css/sb-admin.css" rel="stylesheet">--%>

</head>

<body class="bg-dark">
<form:form modelAttribute="user" method="post">
<%--  <div class="container">--%>
<%--    <div class="card card-login mx-auto mt-5">--%>
<%--      <div class="card-header">Login</div>--%>
<%--      <div class="card-body">--%>
<%--        <form>--%>
<%--          <div class="form-group">--%>
<%--            <div class="form-label-group">--%>
<%--              <form:input path="username" name="username" type="email" id="inputEmail" class="form-control" placeholder="Email address" required="required" autofocus="autofocus"/>--%>
<%--              <label for="inputEmail">Email address</label>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--          <div class="form-group">--%>
<%--            <div class="form-label-group">--%>
<%--              <form:input path="password" name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required="required"/>--%>
<%--              <label for="inputPassword">Password</label>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--          <div class="form-group">--%>
<%--            <div class="checkbox">--%>
<%--              <label>--%>
<%--                <input type="checkbox" value="remember-me">--%>
<%--                Remember Password--%>
<%--              </label>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--          <a class="btn btn-primary btn-block" href="/user/home">Login</a>--%>
<%--        </form>--%>
<%--        <div class="text-center">--%>
<%--          <a class="d-block small mt-3" href="/register">Register an Account</a>--%>
<%--          <a class="d-block small" href="/forgotPassword">Forgot Password?</a>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
<%--</form:form>--%>
<%--  <!-- Bootstrap core JavaScript-->--%>
<%--  <script src="../vendor/jquery/jquery.min.js"></script>--%>
<%--  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>--%>

<%--  <!-- Core plugin JavaScript-->--%>
<%--  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>--%>

<%--<form method="post">--%>

  <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap Elegant Modal Login Modal Form with Icons</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
      body {
        background-image: url("/img/207.jpg");
        font-family: 'Varela Round', sans-serif;
      }
      .modal-login {
        color: #636363;
        width: 350px;
      }
      .modal-login .modal-content {
        padding: 20px;
        border-radius: 5px;
        border: none;
      }
      .modal-login .modal-header {
        border-bottom: none;
        position: relative;
        justify-content: center;
      }
      .modal-login h4 {
        text-align: center;
        font-size: 26px;
      }
      .modal-login  .form-group {
        position: relative;
      }
      .modal-login i {
        position: absolute;
        left: 13px;
        top: 11px;
        font-size: 18px;
      }
      .modal-login .form-control {
        padding-left: 40px;
      }
      .modal-login .form-control:focus {
        border-color: #00ce81;
      }
      .modal-login .form-control, .modal-login .btn {
        min-height: 40px;
        border-radius: 3px;
      }
      .modal-login .hint-text {
        text-align: center;
        padding-top: 10px;
      }
      .modal-login .close {
        position: absolute;
        top: -5px;
        right: -5px;
      }
      .modal-login .btn {
        background: #00ce81;
        border: none;
        line-height: normal;
      }
      .modal-login .btn:hover, .modal-login .btn:focus {
        background: #00bf78;
      }
      .modal-login .modal-footer {
        background: #ecf0f1;
        border-color: #dee4e7;
        text-align: center;
        margin: 0 -20px -20px;
        border-radius: 5px;
        font-size: 13px;
        justify-content: center;
      }
      .modal-login .modal-footer a {
        color: #999;
      }
      .trigger-btn {
        display: inline-block;
        margin: 100px auto;
      }
    </style>
  </head>
  <body>
  <div class="text-center">
    <!-- Button HTML (to Trigger Modal) -->
<%--    <a href="#myModal" class="trigger-btn" data-toggle="modal">Click to Open Login</a>--%>
  </div>

  <!-- Modal HTML -->
  <div id="myModal"
<%--       class="modal fade">--%>
    <div class="modal-dialog modal-login">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">User Login</h4>
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
        <div class="modal-body">
          <form action="/examples/actions/confirmation.php" method="post">
            <div class="form-group">
              <i class="fa fa-user"></i>
              <form:input path="username" type="text" name="username" class="form-control" placeholder="Email" required="required"/>
            </div>
            <div class="form-group">
              <i class="fa fa-lock"></i>
              <form:input path="password" type="password" name="password" class="form-control" placeholder="Password" required="required"/>
            </div>
            <div class="form-group">
              <input type="submit" class="btn btn-primary btn-block btn-lg" value="Login">
            </div>
<%--          </form>--%>

        </div>

      </div>
    </div>
  </div>
<%--  </body>--%>
<%--  </html>--%>
<%--  <div><label> User Name <form:input path="username" type="text" name="username"/> </label></div>--%>
<%--  <div><label> Password: <form:input path="password" type="password" name="password"/> </label></div>--%>
<%--  <div><input type="submit" value="Sign In"/></div>--%>
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
</form:form>

</body>
</html>
