<%@ page import="com.example.df.entity.User" %>
<%@ page import="com.example.df.servlets.DatabaseEncryption" %><%--
  Created by IntelliJ IDEA.
  User: amrita
  Date: 31/03/23
  Time: 2:21 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page errorPage="errorPage.jsp" %>

<html>
<head>
    <title>Profile</title>
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
<!-- Navigation-->
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
        <a class="navbar-brand" href="#page-top">Data Fortress</a>
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
                        class="nav-link py-3 px-0 px-lg-3 rounded" href="#product">Product</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a
                        class="nav-link py-3 px-0 px-lg-3 rounded" href="#payment">Payment</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a
                        class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a
                        class="nav-link py-3 px-0 px-lg-3 rounded" href="logout">Logout</a></li>
                <li class="nav-item mx-0 mx-lg-1"><a
                        class="nav-link py-3 px-0 px-lg-3 rounded" href="account.jsp"><%=user.getEmail()%></a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- Masthead-->
<section id="home">
    <header class="masthead bg-primary text-white text-center" >
        <div class="container d-flex align-items-center flex-column" >
            <!-- Masthead Avatar Image-->
            <img class="masthead-avatar mb-5" src="assets/img/avataaars.svg"
                 alt="..." />
            <!-- Masthead Heading-->
            <h1 class="masthead-heading text-uppercase mb-0">Data Fortress</h1><br>
            <h4>Welcome, <%=DatabaseEncryption.decrypt(user.getName())%></h4>
            <!-- Icon Divider-->
            <div class="divider-custom divider-light">
                <div class="divider-custom-line"></div>
                <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                </div>
                <div class="divider-custom-line"></div>
            </div>
            <!-- Masthead Subheading-->
            <p class="masthead-subheading font-weight-light mb-0">We focus on your privacy. </p>
        </div>
    </header>
</section>
</br></br>
<!-- Pricing -->

<section id="product">
    <div class="row" style="margin-top: 10px;margin-right: 10px;margin-left: 10px;margin-bottom: 10px;">
        <div class="col-lg-4 col-md-6">
            <div class="card" >
                <img src="./images/earpods.jpeg" class="card-img-top" width =300 height=300  alt="...">
                <div class="card-body">
                    <h2>Earphone</h2>
                    <p>INR 30,000</p>
                    <button class="btn btn-lg btn-block btn-dark " type="button " >Buy Now</button>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6">
            <div class="card">
                <img src="./images/mouse1.jpeg" class="card-img-top" width =300 height=300  alt="...">
                <div class="card-body">
                    <h2>Mouse</h2>
                    <p>INR 10,000</p>
                    <button class="btn btn-lg btn-block btn-dark " type="button" >Buy Now</button>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card">
                <img src="./images/phone2.png" class="card-img-top" width =300 height=300 alt="...">
                <div class="card-body">
                    <h2>IPhone 14</h2>
                    <p>INR 90,000</p>
                    <button class="btn btn-lg btn-block btn-dark "type="button ">Buy Now</button>
                </div>
            </div>
        </div>
    </div>
    <div class="row" padding=100px>
        <div class="col-lg-4 col-md-6">
            <div class="card" >
                <img src="./images/speaker.png" class="card-img-top" width =300 height=300  alt="...">
                <div class="card-body">
                    <h2>Speaker</h2>
                    <p>INR 5000</p>
                    <button class="btn btn-lg btn-block btn-dark " type="button " >Buy Now</button>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6">
            <div class="card">
                <img src="./images/shoes.jpg" class="card-img-top" width =300 height=300  alt="...">
                <div class="card-body">
                    <h2>Shoes</h2>
                    <p>INR 10,000</p>
                    <button class="btn btn-lg btn-block btn-dark " type="button" >Buy Now</button>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card">
                <img src="./images/painting.jpg" class="card-img-top" width =300 height=300 alt="...">
                <div class="card-body">
                    <h2>Painting</h2>
                    <p>INR 9000</p>
                    <button class="btn btn-lg btn-block btn-dark "type="button ">Buy Now</button>
                </div>
            </div>
        </div>
    </div>
    <div class="row" padding=100px>
        <div class="col-lg-4 col-md-6">
            <div class="card" >
                <img src="./images/ipad.png" class="card-img-top" width =300 height=300  alt="...">
                <div class="card-body">
                    <h2>IPad</h2>
                    <p>INR 60,000</p>
                    <button class="btn btn-lg btn-block btn-dark " type="button " >Buy Now</button>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6">
            <div class="card">
                <img src="./images/luggagebag.png" class="card-img-top" width =300 height=300  alt="...">
                <div class="card-body">
                    <h2>Backpack</h2>
                    <p>INR 10,000</p>
                    <button class="btn btn-lg btn-block btn-dark " type="button" >Buy Now</button>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card">
                <img src="./images/watch.jpg" class="card-img-top" width =300 height=300 alt="...">
                <div class="card-body">
                    <h2>Watch</h2>
                    <p>INR 9000</p>
                    <button class="btn btn-lg btn-block btn-dark "type="button ">Buy Now</button>
                </div>
            </div>
        </div>
    </div>
</section>

</br></br>
<!-- PAYMENT -->
<section id="payment">
    <div class="container" >
        <div class="row">
            <div class=" col-md-6">
                <div class="card"  >
                    <div class="signup-image" >
                        <img class="payment_img" border= none src="images/payment.png" alt="payment image">
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card" >
                    <div class="card-header">
                        <h4 class="card-title">Payment Details</h4>
                    </div></br>
                    <div class="card-body">
                        <form>
                            <div class="form-group">
<%--                                <label for="name">Name on Card</label>--%>
                                <input type="text" class="form-control" id="name" placeholder="Enter name on card">
                            </div></br>
                            <div class="form-group">
<%--                                <label for="card-number">Card Number</label>--%>
                                <input type="text" class="form-control" id="card-number" placeholder="Enter card number">
                            </div></br>
                            <div class="form-group">
<%--                                <label for="expiry-date">Expiry Date</label>--%>
                                <input type="text" class="form-control" id="expiry-date" placeholder="Enter expiry date (MM/YY)">
                            </div></br>
                            <div class="form-group">
<%--                                <label for="cvv">CVV</label>--%>
                                <input type="text" class="form-control" id="cvv" placeholder="Enter CVV code">
                            </div></br>
                            <button type="submit" class="btn btn-primary payment_button" >Submit Payment</button>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Contact Section-->
<section class="page-section" id="contact">
    <div class="container">
        <!-- Contact Section Heading-->
        <h2
                class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact
            Us</h2>
        <!-- Icon Divider-->
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-icon">
                <i class="fas fa-star"></i>
            </div>
            <div class="divider-custom-line"></div>
        </div>
        <!-- Contact Section Form-->
        <div class="row justify-content-center">
            <div class="col-lg-8 col-xl-7">
                <!-- * * * * * * * * * * * * * * *-->
                <!-- * * SB Forms Contact Form * *-->
                <!-- * * * * * * * * * * * * * * *-->
                <!-- This form is pre-integrated with SB Forms.-->
                <!-- To make this form functional, sign up at-->
                <!-- https://startbootstrap.com/solution/contact-forms-->
                <!-- to get an API token!-->
                <form action="#" id="contactForm" data-sb-form-api-token="API_TOKEN">
                    <!-- Name input-->
                    <div class="form-floating mb-3">
                        <input class="form-control" id="name" type="text"
                               placeholder="Enter your name..." data-sb-validations="required" />
                        <label for="name">Full name</label>
                        <div class="invalid-feedback" data-sb-feedback="name:required">A
                            name is required.</div>
                    </div>
                    <!-- Email address input-->
                    <div class="form-floating mb-3">
                        <input class="form-control" id="email" type="email"
                               placeholder="name@example.com"
                               data-sb-validations="required,email" /> <label for="email">Email
                        address</label>
                        <div class="invalid-feedback" data-sb-feedback="email:required">An
                            email is required.</div>
                        <div class="invalid-feedback" data-sb-feedback="email:email">Email
                            is not valid.</div>
                    </div>
                    <!-- Phone number input-->
                    <div class="form-floating mb-3">
                        <input class="form-control" id="phone" type="tel"
                               placeholder="(123) 456-7890" data-sb-validations="required" />
                        <label for="phone">Phone number</label>
                        <div class="invalid-feedback" data-sb-feedback="phone:required">A
                            phone number is required.</div>
                    </div>
                    <!-- Message input-->
                    <div class="form-floating mb-3">
							<textarea class="form-control" id="message" type="text"
                                      placeholder="Enter your message here..." style="height: 10rem"
                                      data-sb-validations="required"></textarea>
                        <label for="message">Message</label>
                        <div class="invalid-feedback" data-sb-feedback="message:required">A
                            message is required.</div>
                    </div>
                    <!-- Submit success message-->
                    <!---->
                    <!-- This is what your users will see when the form-->
                    <!-- has successfully submitted-->
                    <div class="d-none" id="submitSuccessMessage">
                        <div class="text-center mb-3">
                            <div class="fw-bolder">Form submission successful!</div>
                            To activate this form, sign up at <br /> <a
                                href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                        </div>
                    </div>
                    <!-- Submit error message-->
                    <!---->
                    <!-- This is what your users will see when there is-->
                    <!-- an error submitting the form-->
                    <div class="d-none" id="submitErrorMessage">
                        <div class="text-center text-danger mb-3">Error sending
                            message!</div>
                    </div>
                    <!-- Submit Button-->
                    <button type="submit" class="btn btn-primary payment_button btn-xl" >Send</button>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- Footer-->
<footer class="footer text-center">
    <div class="container">
        <div class="row">
            <!-- Footer Location-->
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="text-uppercase mb-4">Location</h4>
                <p class="lead mb-0">
                    SRM University <br /> Chennai,Tamil Nadu,603203
                </p>
            </div>
            <!-- Footer Social Icons-->
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="text-uppercase mb-4">Join Us</h4>
                <a class="btn btn-outline-light btn-social mx-1" href="#!"><i
                        class="fab fa-fw fa-facebook-f"></i></a> <a
                    class="btn btn-outline-light btn-social mx-1" href="#!"><i
                    class="fab fa-fw fa-twitter"></i></a> <a
                    class="btn btn-outline-light btn-social mx-1" href="#!"><i
                    class="fab fa-fw fa-linkedin-in"></i></a> <a
                    class="btn btn-outline-light btn-social mx-1" href="#!"><i
                    class="fab fa-fw fa-dribbble"></i></a>
            </div>
            <!-- Footer About Text-->
            <div class="col-lg-4">
                <h4 class="text-uppercase mb-4">Support</h4>
                <p class="lead mb-0">
                    Email-datafortress@gmail.com
                </p>

            </div>
        </div>
    </div>
</footer>
<!-- Copyright Section-->
<div class="copyright py-4 text-center text-white">
    <div class="container">
        <small>Copyright &copy; Data Fortress</small>
    </div>
</div>

<!-- Bootstrap core JS-->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<!-- * *                               SB Forms JS                               * *-->
<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src="https://kit.fontawesome.com/59ec5dd39d.js" crossorigin="anonymous"></script>

</body>
</html>
