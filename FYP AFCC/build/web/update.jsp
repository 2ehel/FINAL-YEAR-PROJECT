<!DOCTYPE html>

<%@page import="product.Product"%>
<%@page import="product.ProductDAO"%>
<%@page import="order.Order"%>
<%@page import="java.util.List"%>
<%@page import="order.OrderDAO"%>
<%@page import="user.User"%>
<%@page import="user.UserDAO"%>
<html lang="en">
    <!-- Basic -->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>Endgame Tech CS - Home</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/custom.css">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

        <%
        int userId = (Integer) session.getAttribute("userId");
        String username = (String) session.getAttribute("username");
        UserDAO userdao = new UserDAO();
        User user = userdao.retrieveById(userId);
        
        OrderDAO orderdao = new OrderDAO();
        List<Order> order = orderdao.retrieveAllOrderByUserID(userId);

        ProductDAO productdao = new ProductDAO();
        List<Product> product = productdao.retrieveProductBasedOnCheckout();
    %>
    <body>

        <!-- Start Main Top -->
        <div class="main-top">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="text-slid-box">
                            <div id="offer-box" class="carouselTicker">
                                <ul class="offer-box">
                                    <li>
                                        <i class="fab fa-opencart"></i> Get your favourite items here!
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="our-link">
                            <ul>
                                <li><a href="account-profile.jsp">My Account</a></li>
                                <li><a href="#">Our location</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Main Top -->

        <!-- Start Main Top -->
        <header class="main-header">
            <!-- Start Navigation -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
                <div class="container">
                    <!-- Start Header Navigation -->
                    <div class="navbar-header">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href="home.jsp"><img src="images/logo.png" class="logo" alt=""></a>
                    </div>
                    <!-- End Header Navigation -->

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                            <li class="nav-item active"><a class="nav-link" href="home.jsp">Home</a></li>
                            <li class="dropdown megamenu-fw">
                                <a href="product.jsp" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Product</a>
                                <ul class="dropdown-menu megamenu-content" role="menu">
                                    <li>
                                       <div class="row">
                                            <div class="col-menu col-md-3">
                                                <a href="product.jsp"><h6 class="title">Laptop</h6></a>
                                            </div>
                                            <!-- end col-3 -->
                                            <div class="col-menu col-md-3">
                                                <a href="product.jsp"><h6 class="title">PC</h6></a>
                                            </div>
                                            <!-- end col-3 -->
                                            <div class="col-menu col-md-3">
                                                <a href="product.jsp"><h6 class="title">Printer</h6></a>
                                            </div>
                                            <div class="col-menu col-md-3">
                                                <a href="product.jsp"><h6 class="title">Other</h6></a>
                                                <!-- end col-3 -->
                                            </div>
                                            <!-- end row -->
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="account-profile.jsp" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Account</a>
                                <ul class="dropdown-menu">
                                    <li><a href="account-profile.jsp">My Account</a></li>
                                    <li><a href="cart.jsp">My Cart</a></li>
                                    <li><a href="checkout.jsp">Checkout</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="service.jsp">Our Service</a></li>
                            <li class="nav-item"><a class="nav-link" href="#.html">Contact Us</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->

                    <!-- Start Atribute Navigation -->
                    <div class="attr-nav">
                        <ul>
                            <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                            <li class="side-menu"><a href="#">
                                    <i class="fa fa-shopping-bag"></i>
                                    <span class="badge">3</span>
                                </a></li>
                        </ul>
                    </div>
                    <!-- End Atribute Navigation -->
                </div>
            </nav>
            <!-- End Navigation -->
        </header>
        <!-- End Main Top -->

        <!-- Start Top Search -->
        <div class="top-search">
            <div class="container">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-search"></i></span>
                    <input type="text" class="form-control" placeholder="Search">
                    <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                </div>
            </div>
        </div>
        <!-- End Top Search -->

        <!--Start Main Section-->
        <div class="cart-box-main">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-lg-6 mb-3">
                        <div class="checkout-address">
                            <div class="title-left">
                                <h3>Update Info</h3>
                            </div>
                            <form class="needs-validation" novalidate action="update-process.jsp" method="post">
                                <div class="mb-3">
                                    <label for="userId">Customer ID</label> 
                                    <input type="text" name ="userID" class="form-control" id="userID" value="<%=user.getUserID()%>" readonly="readonly">
                                </div>
                                <div class="mb-3">
                                    <label for="fname">First Name *</label>
                                    <input type="text" name="fname" class="form-control" id="fname" value="<%=user.getFname()%>">
                                    <div class="invalid-feedback"> Please enter your email. </div>
                                </div>
                                <div class="mb-3">
                                    <label for="lname">Last Name *</label>
                                    <input type="text" name="lname" class="form-control" id="lname" value="<%=user.getLname()%>" >
                                    <div class="invalid-feedback"> Please enter your email. </div>
                                </div>
                                <div class="mb-3">
                                    <label for="username">Username *</label>
                                    <input type="text" name="user_name" class="form-control" id="user_name" value="<%=user.getUser_email()%>">
                                    <div class="invalid-feedback"> Please enter your username. </div>
                                </div>
                                <div class="mb-3">
                                    <label for="email">Email *</label>
                                    <input type="email" name="user_email" class="form-control" id="user_email" value="<%=user.getUser_password()%>">
                                    <div class="invalid-feedback"> Please enter your email. </div>
                                </div>
                                <div class="mb-3">
                                    <label for="password">Password *</label>
                                    <input type="password" name="user_password" class="form-control" id="user_password" value="<%=user.getUser_password()%>">
                                    <div class="invalid-feedback"> Please enter your password. </div>
                                </div>
                                <div class="mb-3">
                                    <label for="repassword">Confirm Password *</label>
                                    <input type="password" name="repassword" class="form-control" id="repassword" placeholder="Password">
                                    <div class="invalid-feedback"> Please enter your password. </div>
                                </div>
                                <div class="mb-3">
                                    <label for="phone">Phone *</label>
                                    <input type="text" name="user_phone" class="form-control" id="user_phone" value="<%=user.getUser_phone()%>">
                                    <div class="invalid-feedback"> Please enter your password. </div>
                                </div>
                                <div class="col-12 d-flex shopping-box">
                                    <label ></label>
                                    <input type="submit" class="ml-auto btn hvr-hover" value="Update">
                                </div>
                                <hr class="mb-1"> </form>
                        </div>
                    </div>
                    
                </div>

            </div>
        </div>

        <!-- Start Footer  -->
    <footer>
        <div class="footer-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-widget">
                            <h4>About Endgame Tech CS</h4>
                            <p>Custom build PC service founded by Endgame Tech CS. Shop various peripheral and accessories for you laptop and computer. We also provide laptop and computer service.
                            </p>
                            <ul>
                                <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-widget">
                            <h4>Location</h4>
                            <p>PLAZA LOW YAT</strong><br>
                    2nd, Low Yat Plaza, Lot 2-024,025&026,<br>55100 Kuala Lumpur, <br>Federal Territory of Kuala Lumpur
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link-contact">
                            <h4>Contact Us</h4>
                            <ul>
                                <li>
                                    <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+1-888705770">03 2110 2499</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer  -->

    <!-- Start copyright  -->
    <div class="footer-copyright">
        <p class="footer-company">All Rights Reserved. &copy; <a href="#">ENDGAME TECH</a></p>
    </div>
    <!-- End copyright  -->

    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>


        <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

        <!-- ALL JS FILES -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- ALL PLUGINS -->
        <script src="js/jquery.superslides.min.js"></script>
        <script src="js/bootstrap-select.js"></script>
        <script src="js/inewsticker.js"></script>
        <script src="js/bootsnav.js."></script>
        <script src="js/images-loded.min.js"></script>
        <script src="js/isotope.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/baguetteBox.min.js"></script>
        <script src="js/form-validator.min.js"></script>
        <script src="js/contact-form-script.js"></script>
        <script src="js/custom.js"></script>
    </body>

</html>