<%--
  Created by IntelliJ IDEA.
  User: amrita
  Date: 31/03/23
  Time: 2:06 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page errorPage="errorPage.jsp" %>
<html>
<head>
    <title>Login</title>
<%--    <form action="login" method="post">--%>
<%--        <label for="useremail">User email</label>--%>
<%--        <input name="useremail" type="email" class="form-control" id="useremail" aria-describedby="emailHelp" placeholder="Enter name" required>--%>

<%--        <label for="userpass">User pass</label>--%>
<%--        <input name="userpass" type="password" class="form-control" id="userpass" aria-describedby="emailHelp" placeholder="Enter name">--%>
<%--        <button type="submit">submit</button>--%>
<%--    </form>--%>

    <!-- Font Icon -->
    <link rel="stylesheet"
          href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
<div class="main">

    <!-- Sing in  Form -->
    <section class="sign-in">
        <div class="container">
            <div class="signin-content">
                <div class="signin-image">
                    <figure>
                        <img src="images/signin-image.jpg" alt="sing up image">
                    </figure>
                </div>

                <div class="signin-form">
                    <h2 class="form-title">Sign in</h2>
                    <form method="post" action="login" class="register-form" id="login-form">
                        <div class="form-group">
                            <label for="uemail"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="email" name="useremail" id="uemail" placeholder="Your Email" />
                        </div>
                        <div class="form-group">
                            <label for="password"><i class="zmdi zmdi-lock"></i></label>
                            <input type="password" name="userpass" id="password" placeholder="Password" />
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="signin" id="signin" class="form-submit" value="Log in" />
                        </div>
                    </form>
                    <div class="social-login">
                        <span class="social-label">New user?</span><br>
                        <ul class="socials">
                            <a href="register.jsp" class="signup-image-link">Create an account</a>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>
<!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">
    var status = document.getElementById("status").value;
    if(status=="failed")
    {
        swal("Sorry","Wrong Username or Password ","error");}
</script>

</body>
</html>
