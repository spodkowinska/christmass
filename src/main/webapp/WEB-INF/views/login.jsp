<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login to Christmass</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
    <style type="text/css">
      body {
        color: #999;
        background-image: url("/img/207.jpg");
        /*background: #f5f5f5;*/
        font-family: 'Varela Round', sans-serif;
      }
      .form-control {
        box-shadow: none;
        border-color: #ddd;
      }
      .form-control:focus {
        border-color: #4aba70;
      }
      .login-form {
        width: 350px;
        margin: 0 auto;
        padding: 30px 0;
      }
      .login-form form {
        color: #434343;
        border-radius: 1px;
        margin-bottom: 15px;
        background: #fff;
        border: 1px solid #f3f3f3;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
      }
      .login-form h4 {
        text-align: center;
        font-size: 22px;
        margin-bottom: 20px;
      }
      .login-form .avatar {
        color: #fff;
        margin: 0 auto 30px;
        text-align: center;
        width: 100px;
        height: 100px;
        border-radius: 50%;
        z-index: 9;
        background: #19aa8d;
        padding: 15px;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);

      }
      .login-form .avatar i {
        font-size: 62px;
      }
      .login-form .form-group {
        margin-bottom: 20px;
      }
      .login-form .form-control, .login-form .btn {
        min-height: 40px;
        border-radius: 2px;
        transition: all 0.5s;
      }
      .login-form .close {
        position: absolute;
        top: 15px;
        right: 15px;
      }
      .login-form .btn {
        font-size: 16px;
        font-weight: bold;
        background: #19aa8d;
        border-radius: 3px;
        border: none;
        min-width: 140px;
        outline: none !important;
        /*background: #4aba70;*/
        /*border: none;*/
        /*line-height: normal;*/
      }
      .login-form .btn:hover, .login-form .btn:focus {
        background: #056861;
      }
      .login-form .checkbox-inline {
        float: left;
      }
      .login-form input[type="checkbox"] {
        margin-top: 2px;
      }
      .login-form .forgot-link {
        float: right;
      }
      .login-form .small {
        font-size: 13px;
      }
      .login-form a {
        color: #4aba70;
      }
    </style>
    <script>
      jQuery.extend(jQuery.messages, {
        required: "This field is required.",
      });
    </script>
    <script type="text/javascript">
      $(document).ready(function() {
        $("#form").validate({
          rules: {
            username: {
              required: true,
              email: true
            },
            password: {
              required: true,
              minlength: 3
            }
          },

          messages :{
            username : {
              required : <spring:message code="pl.coderslab.christmass.enterLogin"/>,
              email: <spring:message code="pl.coderslab.christmass.enterLogin@"/>
            },
            password : {
              required : <spring:message code="pl.coderslab.christmass.enterPass"/>,
              minlength: <spring:message code="pl.coderslab.christmass.enterPassLength"/>
            }
          }
      });
      });
    </script>

  </head>
  <body>

  <div class="login-form">
    <form method="post" action="/login" id="form">
      <div class="avatar"><i class="material-icons">&#xE7FF;</i></div>
      <h4 class="modal-title">Login to Your Account</h4>
      <div class="form-group">
        <input type="email" name="username" class="form-control" placeholder="Email">
      </div>
      <div class="form-group">
        <input type="password" name="password" class="form-control" placeholder="Password">
      </div>
      <div class="form-group small clearfix">
        <label class="checkbox-inline"><input type="checkbox"> Remember me</label>
        <a href="#" class="forgot-link">Forgot Password?</a>
      </div>
      <input type="submit" class="btn btn-primary btn-block btn-lg" value="Sign in">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
    <div class="text-center small">Don't have an account? <a href="/registration">Sign up</a></div>
  </div>
</body>
</html>