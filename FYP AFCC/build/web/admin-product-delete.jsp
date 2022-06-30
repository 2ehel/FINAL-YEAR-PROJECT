<%-- 
    Document   : admin-product-delete
    Created on : Jan 25, 2021, 8:57:06 PM
    Author     : ariff
--%>

<%@page import="product.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AF Computer Centre - Home</title>
    </head>
    <body>
        <%
            String productID = request.getParameter("id");
            ProductDAO productdao = new ProductDAO();
            int result = productdao.deleteProduct(productID);

            String id = request.getParameter("id");
            productdao.deleteProduct(productID);
            out.println("<script type=\"text/javascript\">");
            out.println("alert(\"Success update the Record\")");
            out.print("<p>Delete successfully!</p>");
            request.getRequestDispatcher("viewProduct.jsp").include(request, response);
        %>
    </body>
</html>