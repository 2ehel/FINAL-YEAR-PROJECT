<%@page import="admin.Admin"%>
<%@page import="admin.AdminDAO"%>
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
        <!-- Button CSS -->
        <link rel="stylesheet" href="css/button.css">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
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
                               
                                <li><a href="logout.jsp">Logout</a></li>
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
                                <a href="product.jsp" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Manage Product</a>
                            </li>
                            <li class="dropdown">
                                <a href="account-profile.jsp" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Manage Order</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="service.jsp">Customer Contact</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
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

        <!--Main Section-->
        <div style="border: 1px solid gray;
             padding: 100px;">
            <h1 style="text-align: center;
                text-transform: uppercase; font-size: 50px;
                color: black;">ENDGAME TECH CS<br>ADD PRODUCT</h1>
            <div style="width: 500px;margin: auto;">
                <form action="AdminUploadServlet" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="productId">ID</label>
                        <input type="text" name="productID" class="form-control" id="productID" placeholder="" required>
                        <div class="invalid-feedback"> Please enter. </div>
                    </div>
                    <div class="mb-3">
                        <label for="productName">Name *</label>
                        <input type="text" name="productName" class="form-control" id="productName" placeholder="" required>
                        <div class="invalid-feedback"> Please enter. </div>
                    </div>
                    <div class="mb-3">
                        <label for="productCategory">Category *</label>
                        <select class="form-control" name="productCategory" id="productCategory">
                            <option value="Laptop">Laptop</option>
                            <option value="PC">PC</option>
                            <option value="Gaming Chair">Gaming Chair</option>
                            <option value="Peripherals">Peripherals</option>
                        </select>
                        <div class="invalid-feedback"> Please enter. </div>
                    </div>
                    <div class="mb-3">
                        <label for="productPrice">Price *</label>
                        <input type="int" name="productPrice" class="form-control" id="productPrice" placeholder="" required>
                        <div class="invalid-feedback"> Please enter. </div>
                    </div>
                    <div class="mb-3">
                        <label for="productCondition">Condition *</label>
                        <select class="form-control" name="productCondition" id="productCondition">
                            <option value="New">New</option>
                            <option value="Used">Used</option>
                        </select>
                        <div class="invalid-feedback"> Please enter. </div>
                    </div>
                    <div class="mb-3">
                        <label for="totalStock">In Stock *</label>
                        <input type="int" name="totalStock" class="form-control" id="totalStock" placeholder="" required>
                        <div class="invalid-feedback"> Please enter. </div>
                    </div>
                    <div class="mb-3">
                        <label for="productDesc">Description *</label>
                        <input type="text" name="productDesc" class="form-control" id="productDesc" placeholder="" required>
                        <div class="invalid-feedback"> Please enter. </div>
                    </div>
                    <div class="mb-3">
                        <label for="productImage">Image *</label>
                        <input type="file" name="file" class="form-control" id="productImage" placeholder="" required>
                        <div class="invalid-feedback"> Please enter. </div>
                    </div>
                    <div class="col-12 d-flex shopping-box">
                        <label ></label>
                        <input type="submit" class="ml-auto btn hvr-hover" value="Add">
                    </div>
                    <hr class="mb-1"> 
                </form><br><br>
                <br><br>
            </div>
        </div>
        <!--End of Main Section-->

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