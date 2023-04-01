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
    <title>Register</title>
    <!-- Font Icon -->
    <link rel="stylesheet"
          href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
<div class="main">
    <!-- Sign up form -->
    <section class="signup">
        <div class="container">
            <div class="signup-content">
                <div class="signup-form">
                    <h2 class="form-title">Sign up</h2>

                    <form method="post" action="register" class="register-form" id="register-form">
                        <div class="form-group">
                            <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="username" id="username" placeholder="Your Name" />
                        </div>
                        <div class="form-group">
                            <label for="useremail"><i class="zmdi zmdi-email"></i></label>
                            <input type="email" name="useremail" id="useremail" placeholder="Your Email" />
                        </div>
                        <div class="form-group">
                            <label for="userpass"><i class="zmdi zmdi-lock"></i></label>
                            <input type="password" name="userpass" id="userpass" placeholder="Password" />
                        </div>
                        <div class="form-group">
                            <label for="usermob"><i class="zmdi zmdi-lock-outline"></i></label>
                            <input type="text" name="usermob" id="usermob" placeholder="Contact no" />
                        </div>
<%--                        <div class="form-group">--%>
<%--                            <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" required/>--%>
<%--                            <label for="agree-term" class="label-agree-term"><span></span>I agree all statements in <a href="#" class="term-service">Terms of service</a></label>--%>
<%--                        </div>--%>
                        <div class="form-group form-button">
                            <input type="submit" name="signup" id="signup"
                                   class="form-submit" value="Register" />
                        </div>
                    </form>
                </div>
                <div class="signup-image">
                    <figure>
                        <img src="images/signup-image.jpg" alt="sing up image">
                    </figure>
                    <a href="login.jsp" class="signup-image-link">I am already a member</a>
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
    if(status=="success")
    {
        swal("Congrats","Account Created Successfully","success");}
</script>
</body>
</html>
