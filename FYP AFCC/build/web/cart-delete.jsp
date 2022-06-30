<%-- 
    Document   : admin-product-delete
    Created on : Jan 25, 2021, 8:57:06 PM
    Author     : ariff
--%>

<%@page import="cart.CartDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int cartID = Integer.parseInt(request.getParameter("id"));
            CartDAO cartdao = new CartDAO();
            int result = cartdao.deleteCart(cartID);
            
             if(result > 0 ){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Delete the Record\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
                rd.include(request, response);
            }
        %>
    </body>
</html>
