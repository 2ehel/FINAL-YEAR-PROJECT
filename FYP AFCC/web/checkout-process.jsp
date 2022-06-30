
<%@page import="order.OrderDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, db.DBConn, user.UserDAO"%>
<jsp:useBean id="checkout" class="order.Order" scope="request"/>
<jsp:setProperty name="checkout" property="userID" value='<%=Integer.parseInt(request.getParameter("userID"))%>'/>
<jsp:setProperty name="checkout" property="productID" value='<%=request.getParameter("productID")%>'/>
<jsp:setProperty name="checkout" property="firstName" value='<%=request.getParameter("firstname")%>'/>
<jsp:setProperty name="checkout" property="lastName" value='<%=request.getParameter("lastname")%>'/>
<jsp:setProperty name="checkout" property="orderAddress" value='<%=request.getParameter("address")%>'/>
<jsp:setProperty name="checkout" property="orderAddress2" value='<%=request.getParameter("address2")%>'/>
<jsp:setProperty name="checkout" property="orderState" value='<%=request.getParameter("state")%>'/>
<jsp:setProperty name="checkout" property="orderZip" value='<%=Integer.parseInt(request.getParameter("orderZip"))%>'/>
<jsp:setProperty name="checkout" property="orderPaymentMethod" value='<%=request.getParameter("paymentMethod")%>'/>
<jsp:setProperty name="checkout" property="orderShippingOption" value='<%=request.getParameter("shippingOption")%>'/>
<jsp:setProperty name="checkout" property="grandTotal" value='<%=request.getParameter("grandTotal")%>'/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
            DBConn database = new DBConn();
            OrderDAO orderdao = new OrderDAO();
            int result = orderdao.addOrder(checkout);
            
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Payment Success\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
                rd.include(request, response);
            }
            database.closeConnection();
        %>
    </body>
</html>
