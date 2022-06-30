<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="product.Product"%>
<%@page import="product.ProductDAO"%>
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

    <%
        int adminID = (Integer) session.getAttribute("adminID");
        String adminName = (String) session.getAttribute("adminName");
        AdminDAO admindao = new AdminDAO();
        Admin admin = admindao.retrieveById(adminID);

        ProductDAO productdao = new ProductDAO();
        List<Product> product = productdao.retrieveAllProduct();
    %>
    <style>
        .dropbtn {
            background-color: #f2f2f2;
            color: black;
            padding: 10px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

        .dropbtn:hover, .dropbtn:focus {
            background-color: #b3e0ff;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #e6e6e6;
            min-width: 160px;
            overflow: auto;
            box-shadow: 0px 8px 10px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown a:hover {background-color: #ddd;}

        .show {display: block;}

        li {
            float: left;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover {
            background-color: #111;
        }
        #myInput {
            background-position: 10px 10px;
            background-repeat: no-repeat;
            width:50%;
            font-size: 16px;
            padding: 12px 20px 12px 40px;
            border: 10px solid #ddd;
            margin-bottom: 12px;
        }

        .container{
            max-width: 1500px;
        }
        .table>thead>tr.names>th{
            border-bottom: 5px;
        }
        .table>tbody>tr.item>td{
            padding-bottom: 40px;
            padding-top: 40px;
            vertical-align: middle;
        }
        .table>tfoot>tr.no-border>td{
            border-top: 0 none;
            padding-top: 40px;
        }
        .img-product{
            padding-top: 50px;
        }
        td {
            text-align: center;
            vertical-align: middle;
        }

        th {
            text-align: center;
            vertical-align: middle;
        }


    </style>
    <body>
        <!-- Start Main Top -->
        <div class="main-top">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="text-slid-box">
                            <div id="offer-box" class="carouselTicker">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="our-link">
                            <ul>
                                <li><a href="account-profile.jsp">Admin : <%=admin.getAdminName()%></a></li>
                                <li><a href="admin-logout.jsp">Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Main Top -->

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
                    <input float="left" type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Product ID.." title="Type in a Product ID">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item active"><a class="nav-link" href="admin-home.jsp">Home</a></li>
                        <li class="nav-item "><a class="nav-link" href="viewProduct.jsp">Manage Product</a></li>
                        <li class="nav-item "><a class="nav-link" href="admin-order.jsp">Manage Order</a></li>
                        <li class="nav-item "><a class="nav-link" href="admin-contact.jsp">Customer Contact</a></li>           
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                    <li class="nav-item" style="float: right"><a href="admin-product-add.jsp">Add New Product</a></li> </ul>
            </div>
        </nav>
        <!-- End Navigation -->
        <div style="border: 1px solid gray;
             padding: 50px;">
            <h1 style="text-align: center;
                text-transform: uppercase; font-size: 30px;
                color: black;">ENDGAME TECH CS<br>ADMINISTRATION SYSTEM<br>MANAGE PRODUCT</h1>
            <center>
                <div class="container">
                    <table id="myTable" class="table table-responsive">
                        <thead>
                            <tr>
                                <th>Product ID</th>
                                <th>Name</th>
                                <th>Category</th>
                                <th>In Stock</th>
                                <th>Price</th>
                                <th>Condition</th>
                                <th>Description</th>
                                <th>Image</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <%
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fyp", "root", "");
                                Statement st = con.createStatement();
                                String sql = "SELECT * FROM product";
                                ResultSet rs = st.executeQuery(sql);
                                while (rs.next()) {
                                    String id = rs.getString("productID");
                                    String model = rs.getString("productName");
                                    String category = rs.getString("productCategory");
                                    String stock = rs.getString("totalStock");
                                    String Price = rs.getString("productPrice");
                                    String status = rs.getString("productCondition");
                                    String productDesc = rs.getString("productDesc");
                                    String filename = rs.getString("Filename");
                                    // String path = rs.getString("path");
%>
                        <tr>
                            <td><%=id%></td>
                            <td><%=model%></td>
                            <td><%=category%></td>
                            <td><%=stock%></td>
                            <td><%=Price%></td>
                            <td><%=status%></td>
                            <td><%=productDesc%></td>
                            <td><image src="<%=filename%>" width="200" height="200"/></td>
                            <td><a href="admin-product-update.jsp?id=<%=id%>" class="btn btn-outline-warning btn-sm">EDIT</a><br>
                                <script>
                                    function deleteItem() {
                                        var ask = window.confirm("Are you sure you want to delete this product?");
                                        if (ask) {
                                            window.location.href = "admin-product-delete.jsp?id=<%=id%>";
                                        }
                                    }
                                </script>
                                <br><a class="btn btn-outline-danger btn-sm" onclick="deleteItem()">DELETE</a></td>

                            <%
                                    }
                                } catch (Exception e) {
                                    out.println(e);
                                }
                            %>
                        </tr>
                    </table>
                </div></center></div>
        <script>
            function myFunction() {
                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[0];
                    if (td) {
                        txtValue = td.textContent || td.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }

        </script>

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

        <script>
            function myFunction() {
                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[0];
                    if (td) {
                        txtValue = td.textContent || td.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }
        </script>

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
