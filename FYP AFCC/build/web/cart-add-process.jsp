<%-- 
    Document   : login-process
    Created on : Jan 23, 2021, 2:36:29 PM
    Author     : hakim
--%>

<%@page import="cart.CartDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, db.DBConn, user.UserDAO"%>
<jsp:useBean id="cart" class="cart.Cart" scope="request"/>
<jsp:setProperty name="cart" property="userID" value='<%=Integer.parseInt(request.getParameter("userID"))%>'/>
<jsp:setProperty name="cart" property="productID" value='<%=request.getParameter("productID")%>'/>
<jsp:setProperty name="cart" property="quantity" value='<%=Integer.parseInt(request.getParameter("quantity"))%>'/>
<jsp:setProperty name="cart" property="totalPrice" value='<%=Integer.parseInt(request.getParameter("totalPrice"))%>'/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
            DBConn database = new DBConn();
            CartDAO cartdao = new CartDAO();
            int result = cartdao.addCart(cart);
            
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Add to Cart\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("product-detail.jsp");
                rd.include(request, response);
            }
            database.closeConnection();
        %>
    </body>
</html>