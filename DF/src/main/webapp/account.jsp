<%@ page import="com.example.df.entity.User" %>
<%@ page import="com.example.df.servlets.DatabaseEncryption" %><%--
  Created by IntelliJ IDEA.
  User: amrita
  Date: 31/03/23
  Time: 11:30 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
            crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
          rel="stylesheet" type="text/css" />
    <link
            href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
            rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/index-styles.css" rel="stylesheet" />
</head>
<body>
<%
    User user = (User)session.getAttribute("currentUser");
    if(user==null)
    {
        response.sendRedirect("login.jsp");
    }

%>
<nav
        class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
        id="mainNav">
    <div class="container">
        <a class="navbar-brand" href="profile.jsp">Data Fortress</a>
        <button
                class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
                type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
                aria-expanded="false" aria-label="Toggle navigation">
            Menu <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item mx-0 mx-lg-1"><a
                        class="nav-link py-3 px-0 px-lg-3 rounded" href="profile.jsp">Home</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a
                        class="nav-link py-3 px-0 px-lg-3 rounded" href="logout">Logout</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a
                        class="nav-link py-3 px-0 px-lg-3 rounded" href="account.jsp"><%=user.getEmail()%></a></li>
            </ul>
        </div>
    </div>
</nav>
<section>
    <div class="container align-items-center">
        <div class="row align-items-center">
            <div class="col" style="margin-top: 100px;margin-right: 200px;margin-left: 200px;margin-bottom: 100px;">
                <div class="card" >
                    <div class="card-header">
                        <h4 class="card-title">Account Details</h4>
                    </div></br>
                    <div class="card-body">
                        <form action="update.jsp">
                            <div class="form-group">
                                <table class="table table-bordered">
                                    <tbody>
                                    <tr>
                                        <th scope="row">Name</th>
                                        <td><%=DatabaseEncryption.decrypt(user.getName())%></td>

                                    </tr>
                                    <tr>
                                        <th scope="row">Email</th>
                                        <td><%=user.getEmail()%></td>

                                    </tr>
                                    <tr>
                                        <th scope="row">Mobile no.</th>
                                        <td colspan="2"><%=DatabaseEncryption.decrypt(user.getMob())%></td>
                                    </tr>
                                    </tbody>
                                </table>

                            </div></br>
<%--                            <button type="submit" class="btn btn-primary payment_button" >Update Details</button>--%>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
