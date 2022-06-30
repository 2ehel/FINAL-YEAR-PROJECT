<%@page import="user.User"%>
<%@page import="user.UserDAO"%>
<%@page import="java.util.List"%>
<%@page import="product.Product"%>
<%@page import="product.ProductDAO"%>
<%@page import="cart.Cart"%>
<%@page import="cart.CartDAO"%>
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

    </head>
    <%
        int userId = (Integer) session.getAttribute("userId");
        String username = (String) session.getAttribute("username");
        UserDAO userdao = new UserDAO();
        User user = userdao.retrieveById(userId);

        ProductDAO productdao = new ProductDAO();
        List<Product> product = productdao.retrieveProductBasedOnCart();

        CartDAO cartdao = new CartDAO();
        List<Cart> cart = cartdao.retrieveAllCartByUserID(userId);

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
                            <li class="nav-item "><a class="nav-link" href="product-detail.jsp">Product</a></li>
                            <li class="nav-item "><a class="nav-link" href="cart.jsp">Cart</a></li>
                            <li class="nav-item "><a class="nav-link" href="account-details.jsp">Account</a></li>
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

        <!-- Start Cart  -->
        <div class="cart-box-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-main table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Images</th>
                                        <th>Product Name</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th>Remove</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% for (int i = 0; i < cart.size(); i++) {%>
                                    <tr>
                                        <td class="filename-pr">
                                            <image src="<%=product.get(i).getFilename()%>" width="200"/>
                                        </td>
                                        <td class="name-pr">
                                            <a href="#">
                                                <%=product.get(i).getProductName()%>
                                            </a>
                                        </td>
                                        <td class="price-pr">
                                            <p><%=product.get(i).getProductPrice()%></p>
                                        </td>
                                        <td class="quantity-box">
                                            <p><%=cart.get(i).getQuantity()%></p>
                                        </td>
                                        <td class="total-pr">
                                            <p><%=(cart.get(i).getTotalPrice())%></p>
                                        </td>
                                        <td class="remove-pr">
                                            <a href="cart-delete.jsp?id=<%=cart.get(i).getCartID()%>">
                                                <i class="fas fa-times"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <% }%> 
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="row my-5">
                    <div class="col-lg-6 col-sm-6">
                        <div class="coupon-box">
                            <div class="input-group input-group-sm">
                                <input class="form-control" placeholder="Enter your coupon code" aria-label="Coupon code" type="text">
                                <div class="input-group-append">
                                    <button class="btn btn-theme" type="button">Apply Coupon</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row my-5">
                    <div class="col-lg-8 col-sm-12"></div>
                    <div class="col-lg-4 col-sm-12">
                        <div class="order-box">
                            <h3>Order summary</h3>
                            <div class="d-flex">
                                <h4>Sub Total</h4>

                                <% int subtotal = 0; %>
                                <% for (int i = 0; i < cart.size(); i++) {%>
                                <% subtotal = subtotal + (product.get(i).getProductPrice() * cart.get(i).getQuantity());%>
                                <%}%>

                                <div class="ml-auto font-weight-bold"> RM <%=subtotal%> </div>
                            </div>
                            <div class="d-flex">
                                <h4>Discount</h4>
                                <div class="ml-auto font-weight-bold"> RM 0 </div>
                            </div>
                            <hr class="my-1">
                            <div class="d-flex">
                                <h4>Coupon Discount</h4>
                                <div class="ml-auto font-weight-bold"> RM 0 </div>
                            </div>
                            <div class="d-flex">
                                <h4>Tax(Include 6% Service Charge)</h4>
                                <% double taxprice; %>
                                <% taxprice = (0.06 * subtotal);%>

                                <div class="ml-auto font-weight-bold"> RM <%= (float) taxprice%> </div>
                            </div>
                            <div class="d-flex">
                                <h4>Shipping Cost (RM 50)</h4>

                                <% int shippingcost = 50;%>
                                <div class="ml-auto font-weight-bold"> RM <%= shippingcost%> </div>
                            </div>
                            <hr>
                            <div class="d-flex gr-total">
                                <h5>Grand Total</h5>
                                <div class="ml-auto h5"> RM <%= subtotal + taxprice + shippingcost%> </div>
                            </div>
                            <hr> </div>
                    </div>
                    <div class="col-12 d-flex shopping-box"><a href="checkout.jsp" class="ml-auto btn hvr-hover">Checkout</a> </div>
                </div>

            </div>
        </div>
        <!-- End Cart -->


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