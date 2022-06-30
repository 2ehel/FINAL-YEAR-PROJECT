<%@page import="user.User"%>
<%@page import="user.UserDAO"%>
<!DOCTYPE html>
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

        <style>
            h1 {
                font-family: 'Source Sans Pro', sans-serif;
                font-size: 22px;
                color: #151E3F;
                font-weight: 300;
                letter-spacing: 2px;
            }
            .wrapper {
                display: flex;
                justify-content: center;
                align-items: center;
                > * {
                    margin: 5px;
                }
            }

            .media {
                width: 25%;
                height: 400px;
                overflow: hidden;
                position: relative;
                display: flex;
                justify-content: center;
                align-items: center;
                img {
                    max-width: 100%;
                    height: auto;
                }
            }

            .layer {
                opacity: 0;
                position: absolute;
                display: flex;
                justify-content: center;
                align-items: center;
                width: 10px;
                height: 90%;
                background: #FFF;
                color: #151E3F;
                transition: all 0.9s ease;
                p {
                    transition: all 0.9s ease;
                    transform: scale(0.1)
                }
            }

            p {
                font-family: 'Inconsolata', monospace;
                text-align: center;
                font-size: 15px;
                letter-spacing:1px;
            }

            .media:hover .layer {
                opacity: 0.8;
                width: 90%;
                transition: all 0.5s ease;
                p {
                    transform: scale(1);
                    transition: all 0.9s ease;
                }
            }

            @media (max-width: 800px){
                body {
                    transform: scale(0.6);
                }
            }

            @media (max-width: 600px) {
                .wrapper {
                    display: block;
                    > * {
                        margin: 10px;
                    }
                }
            }
        </style>
    </head>
    <%
        int userId = (Integer) session.getAttribute("userId");
        String username = (String) session.getAttribute("username");
        UserDAO userdao = new UserDAO();
        User user = userdao.retrieveById(userId);

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
                                <li><a href="account-profile.jsp">My Account : <%=username%></a></li>
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

        <!-- Main Section -->
        <br><br>
    <center><h1>Our Services</h1></center>
    <div class="wrapper"><div class="media">
            <div class="layer">
                <p>Free PC/Laptop Check</p>
            </div>
            <img src="images/laptop-repair-banner.png" style="width: 100%; height: 300px" alt="" />
        </div>
        <div class="media">
            <div class="layer">
                <p>PC/Laptop Troubleshooting</p>
            </div>
            <img src="images/laptop-troubleshooting.png" style="width: 100%; height: 300px" alt="" />
        </div>
        <div class="media">
            <div class="layer">
                <p>PC Build</p>
            </div>
            <img src="images/pc-build.png" style="width: 100%; height: 300px" alt="" />
        </div>
        <div class="media">
            <div class="layer">
                <p>Nearby Location Delivery</p>
            </div>
            <img src="images/delivery.png" style="width: 100%; height: 300px" alt="" />
        </div>
    </div>

    <!--Follow Social Media-->
    <br><br>
    <center><h1>Follow Us On</h1></center>
    <div class="wrapper">
        <div class="media">
            <div class="layer">
                <a href="https://www.facebook.com/AFCOMPUTERCENTRE1" >Facebook</a>
            </div>
            <img src="images/facebook.png" style="width: 50px; height: 50px" alt="" />
        </div>
        <div class="media">
            <div class="layer">
                <a href="https://www.instagram.com/afcomputer/">Instagram</a>
            </div>
            <img src="images/instagram.png" style="width: 50px; height: 50px" alt="" />
        </div>
        <div class="media">
            <div class="layer">
                <a href="https://www.youtube.com/user/caq3950">Youtube</a>
            </div>
            <img src="images/youtube.png" style="width: 50px; height: 50px" alt="" />
        </div>
    </div>
    <br><br>

    <!-- Start Footer  -->
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