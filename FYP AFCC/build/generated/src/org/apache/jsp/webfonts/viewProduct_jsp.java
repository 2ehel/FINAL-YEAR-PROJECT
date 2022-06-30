package org.apache.jsp.webfonts;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import admin.Admin;
import admin.AdminDAO;

public final class viewProduct_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <!-- Basic -->\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\n");
      out.write("        <!-- Mobile Metas -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("        <!-- Site Metas -->\n");
      out.write("        <title>AF Computer Centre - Home</title>\n");
      out.write("        <meta name=\"keywords\" content=\"\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("        <!-- Site Icons -->\n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("        <link rel=\"apple-touch-icon\" href=\"images/apple-touch-icon.png\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!-- Site CSS -->\n");
      out.write("        <link href=\"../css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!-- Responsive CSS -->\n");
      out.write("        <link href=\"../css/responsive.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!-- Custom CSS -->\n");
      out.write("        <link href=\"../css/custom.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!-- Button CSS -->\n");
      out.write("        <link href=\"../css/button.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!--Table -->\n");
      out.write("        <link href=\"../css/table.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Start Main Top -->\n");
      out.write("        <div class=\"main-top\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-6 col-md-6 col-sm-12 col-xs-12\">\n");
      out.write("                        <div class=\"text-slid-box\">\n");
      out.write("                            <div id=\"offer-box\" class=\"carouselTicker\">\n");
      out.write("                                <ul class=\"offer-box\">\n");
      out.write("                                    <li>\n");
      out.write("                                        <i class=\"fab fa-opencart\"></i> Get your favourite items here!\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-6 col-md-6 col-sm-12 col-xs-12\">\n");
      out.write("                        <div class=\"our-link\">\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"account-profile.jsp\">Admin</a></li>\n");
      out.write("                                <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Start Main Top -->\n");
      out.write("        <header class=\"main-header\">\n");
      out.write("            <!-- Start Navigation -->\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <!-- Start Header Navigation -->\n");
      out.write("                    <div class=\"navbar-header\">\n");
      out.write("                        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbar-menu\" aria-controls=\"navbars-rs-food\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                            <i class=\"fa fa-bars\"></i>\n");
      out.write("                        </button>\n");
      out.write("                        <a class=\"navbar-brand\" href=\"home.jsp\"><img src=\"images/logo.png\" class=\"logo\" alt=\"\"></a>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- End Header Navigation -->\n");
      out.write("\n");
      out.write("                    <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("                    <div class=\"collapse navbar-collapse\" id=\"navbar-menu\">\n");
      out.write("                        <ul class=\"nav navbar-nav ml-auto\" data-in=\"fadeInDown\" data-out=\"fadeOutUp\">\n");
      out.write("                            <li class=\"nav-item active\"><a class=\"nav-link\" href=\"admin-home.jsp\">Home</a></li>\n");
      out.write("                            <li class=\"dropdown megamenu-fw\">\n");
      out.write("                                <a href=\"product.jsp\" class=\"nav-link dropdown-toggle arrow\" data-toggle=\"dropdown\">Manage Product</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"dropdown\">\n");
      out.write("                                <a href=\"account-profile.jsp\" class=\"nav-link dropdown-toggle arrow\" data-toggle=\"dropdown\">Manage Order</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\"><a class=\"nav-link\" href=\"service.jsp\">Customer Contact</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /.navbar-collapse -->\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("            <!-- End Navigation -->\n");
      out.write("        </header>\n");
      out.write("    </body>\n");
      out.write("    <div style=\"border: 1px solid gray;\n");
      out.write("             padding: 100px;\">\n");
      out.write("            <h1 style=\"text-align: center;\n");
      out.write("                text-transform: uppercase; font-size: 50px;\n");
      out.write("                color: black;\">AF COMPUTER CENTRE WEBSITE<br>ADMINISTRATION SYSTEM<br><br>MANAGE PRODUCT</h1>\n");
      out.write("            <center>\n");
      out.write("               \n");
      out.write("    <div class=\"container\">\n");
      out.write("        <input type=\"text\" id=\"myInput\" onkeyup=\"myFunction()\" placeholder=\"Search for Product ID..\" title=\"Type in a Bicycle ID\">\n");
      out.write("        <table id=\"myTable\" class=\"table table-responsive\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Product ID</th>\n");
      out.write("                    <th>Name</th>\n");
      out.write("                    <th>Category</th>\n");
      out.write("                    <th>In Stock</th>\n");
      out.write("                    <th>Price</th>\n");
      out.write("                    <th>Condition</th>\n");
      out.write("                    <th>Description</th>\n");
      out.write("                    <th>Image</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            ");

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
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(id);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(model);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(category);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(stock);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(Price);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(status);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(productDesc);
      out.write("</td>\n");
      out.write("                <td><image src=\"");
      out.print(filename);
      out.write("\" width=\"200\" height=\"200\"/></td>\n");
      out.write("\n");
      out.write("                <td><a href='admin-product-update.jsp?id=");
      out.print(id);
      out.write("'>Edit</a><br><br><a href='../admin-product-delete.jsp?id=");
      out.print(id);
      out.write("'>Delete</a></td>\n");
      out.write("\n");
      out.write("                ");

                        }
                    } catch (Exception e) {
                        out.println(e);
                    }
                
      out.write("\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </div> </div>\n");
      out.write("    <script>\n");
      out.write("        function myFunction() {\n");
      out.write("            var input, filter, table, tr, td, i, txtValue;\n");
      out.write("            input = document.getElementById(\"myInput\");\n");
      out.write("            filter = input.value.toUpperCase();\n");
      out.write("            table = document.getElementById(\"myTable\");\n");
      out.write("            tr = table.getElementsByTagName(\"tr\");\n");
      out.write("            for (i = 0; i < tr.length; i++) {\n");
      out.write("                td = tr[i].getElementsByTagName(\"td\")[0];\n");
      out.write("                if (td) {\n");
      out.write("                    txtValue = td.textContent || td.innerText;\n");
      out.write("                    if (txtValue.toUpperCase().indexOf(filter) > -1) {\n");
      out.write("                        tr[i].style.display = \"\";\n");
      out.write("                    } else {\n");
      out.write("                        tr[i].style.display = \"none\";\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("       \n");
      out.write("    </script>\n");
      out.write("    <!-- Start Footer  -->\n");
      out.write("    <footer>\n");
      out.write("        <div class=\"footer-main\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-4 col-md-12 col-sm-12\">\n");
      out.write("                        <div class=\"footer-widget\">\n");
      out.write("                            <h4>About AF Computer Centre</h4>\n");
      out.write("                            <p>Repair Laptop by AF founded by AF Computer Centre. Shop various peripheral and accessories for you laptop and computer. We also provide laptop and computer service.\n");
      out.write("                            </p>\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"#\"><i class=\"fab fa-facebook\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"fab fa-twitter\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"fab fa-whatsapp\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-4 col-md-12 col-sm-12\">\n");
      out.write("                        <div class=\"footer-widget\">\n");
      out.write("                            <h4>Location</h4>\n");
      out.write("                            <p>[HQ] Lorong Bukit Setongkol Perdana 1, <br>Kampung Tanah Putih Darat Makbar, <br> 25200 Kuantan, Pahang\n");
      out.write("                            </p>\n");
      out.write("                            <p>[Branch IM] Lorong IM 3/19, Kampung Sungai Tiram <br>\n");
      out.write("                                [Branch Balok] B26 GF Lorong Balok Darat 14 Pusat Perkhidmatan Balok <br>\n");
      out.write("                                [Branch Pekan] 18, Jalan Engku Muda Mansor, Taman Merdeka\n");
      out.write("                            </p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-4 col-md-12 col-sm-12\">\n");
      out.write("                        <div class=\"footer-link-contact\">\n");
      out.write("                            <h4>Contact Us</h4>\n");
      out.write("                            <ul>\n");
      out.write("                                <li>\n");
      out.write("                                    <p><i class=\"fas fa-phone-square\"></i>Phone: <a href=\"tel:+1-888705770\">016 542 4645</a></p>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("    <!-- End Footer  -->\n");
      out.write("\n");
      out.write("    <!-- Start copyright  -->\n");
      out.write("    <div class=\"footer-copyright\">\n");
      out.write("        <p class=\"footer-company\">All Rights Reserved. &copy; <a href=\"#\">AFCC</a></p>\n");
      out.write("    </div>\n");
      out.write("    <!-- End copyright  -->\n");
      out.write("\n");
      out.write("    <a href=\"#\" id=\"back-to-top\" title=\"Back to top\" style=\"display: none;\">&uarr;</a>\n");
      out.write("\n");
      out.write("    <!-- ALL JS FILES -->\n");
      out.write("    <script src=\"../js/jquery-3.2.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../js/popper.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <!-- ALL PLUGINS -->\n");
      out.write("    <script src=\"../js/jquery.superslides.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../js/bootstrap-select.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../js/inewsticker.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../js/bootsnav.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../js/images-loded.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../js/isotope.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../js/owl.carousel.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../js/baguetteBox.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../js/form-validator.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../js/contact-form-script.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"../js/custom.js\" type=\"text/javascript\"></script>\n");
      out.write("    \n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
