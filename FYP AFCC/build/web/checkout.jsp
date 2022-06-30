<%@page import="java.util.List"%>
<%@page import="user.User"%>
<%@page import="user.UserDAO"%>
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
        <title>Endgame Tech CS</title>
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
                    <div class="col-sm-6 col-lg-6 mb-3">

                        <div class="checkout-address">
                            <div class="title-left">
                                <h3>Billing and Shipping address</h3>
                            </div>
                            <form class="needs-validation" action="checkout-process.jsp" method="post">
                                <div class="mb-3">
                                    <input type="hidden" name="userID" class="form-control" id="userID" value="<%=user.getUserID()%>">
                                </div>
                                <div class="mb-3"><% for (int i = 0; i < cart.size(); i++) {%>
                                    <input type="hidden" name="productID" class="form-control" id="productID" value="<%=product.get(i).getProductID()%>" >
                                    <%}%> </div>
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label for="firstName">First name *</label>
                                        <input type="text" class="form-control" name="firstname" id="firstName" placeholder="" value="" required>
                                        <div class="invalid-feedback"> Valid first name is required. </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="lastName">Last name *</label>
                                        <input type="text" class="form-control" name="lastname" id="lastName" placeholder="" value=" " required>
                                        <div class="invalid-feedback"> Valid last name is required. </div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="address">Address *</label>
                                    <input type="text" class="form-control" name="address" id="address" placeholder="" required>
                                    <div class="invalid-feedback"> Please enter your shipping address. </div>
                                </div>
                                <div class="mb-3">
                                    <label for="address2">Address 2 *</label>
                                    <input type="text" class="form-control" name="address2" id="address2" placeholder=""> </div>
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label for="state">State *</label>
                                        <select class="wide w-100" name="state" id="state">
                                            <option data-display="Select">Choose...</option>
                                            <option value="Pahang">Pahang</option>
                                            <option value="Terengganu">Terengganu</option>
                                            <option value="Johor">Johor</option>
                                        </select>
                                        <div class="invalid-feedback"> Please provide a valid state. </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="orderZip">Zip Code</label>
                                        <input type="text" class="form-control" name="orderZip" id="orderZip" placeholder="">
                                    </div>
                                </div>
                                        <br><br>
                                <div class="title-left"> <h3>Payment Method</h3> </div>
                                
                                <div class="d-block my-3">
                                    <div class="custom-control custom-radio">
                                        <select class="wide w-100" name="paymentMethod" id="paymentMethod">
                                            <option value="cod"> Cash On Delivery </option>
                                            <option value="onlinebanking"> Online Banking </option>
                                        </select>
                                    </div>
                                </div>
                                <hr class="mb-1">
                                <div class="col-12 d-flex shopping-box"> <input type="submit" class="ml-auto btn hvr-hover" value="Place Order"> </div>
                            </form>
                        </div>
                    </div>
                    <div class="row my-5">          
                        <div class="col-sm-6 col-lg-6 mb-3">
                            <div class="row">
                                <div class="col-md-12 col-lg-12">
                                    <div class="shipping-method-box">
                                        <div class="title-left">
                                            <h3>Shipping Method</h3>
                                        </div>
                                        <div class="mb-4">
                                            <div class="custom-control custom-radio">
                                                <input id="shippingOption" name="shippingOption" class="custom-control-input" type="radio">Express Delivery
                                                <span class="float-right font-weight-bold">RM 50</span> </div>
                                            <div class="ml-4 mb-2 small">(2-4 business days)</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-12">
                                    <div class="order-box">
                                        <div class="title-left">
                                            <h3>Your order</h3>
                                        </div>
                                        <div class="d-flex">
                                            <div class="font-weight-bold">Product</div>
                                            <div class="ml-auto font-weight-bold">Total</div>
                                        </div>
                                        <hr class="my-1">
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
                                            <h4>Tax (Include 6% Service Charge)</h4>
                                            <% double taxprice; %>
                                            <% taxprice = (0.06 * subtotal);%>
                                            <div class="ml-auto font-weight-bold"> RM<%= (float) taxprice%> </div>
                                        </div>
                                        <div class="d-flex">
                                            <h4>Shipping Cost</h4>
                                            <% int shippingcost = 50;%>
                                            <div class="ml-auto font-weight-bold">RM<%= shippingcost%> </div>
                                        </div>
                                        <hr>
                                        <div class="d-flex gr-total">
                                            <h3>Grand Total (RM)</h3>
                                            <div class="ml-auto h5">
                                                <input type="text" style="text-align: right;" name="grandTotal" class="form-control" id="grandTotal" value="<%= subtotal + taxprice + shippingcost%>" readonly="readonly">
                                            </div>
                                        </div>
                                        <hr> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div></div>
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