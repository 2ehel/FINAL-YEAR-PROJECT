<%-- 
    Document   : admin-product-update-process
    Created on : Jan 26, 2021, 4:10:57 AM
    Author     : ariff
--%>

<%@page import="order.Order"%>
<%@page import="order.OrderDAO"%>
<jsp:useBean id="order" class="order.Order" scope="request" />
<jsp:setProperty name="order" property="orderStatus" value='<%=request.getParameter("orderStatus")%>'/>
<jsp:setProperty name="order" property="orderID" value='<%=Integer.parseInt(request.getParameter("orderID"))%>'/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            OrderDAO orderdao = new OrderDAO();
            int orderID = Integer.parseInt(request.getParameter("orderID"));
            int result = orderdao.updateOrder(order);
            
             if(result > 0){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success update the Record\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("admin-order.jsp");
                rd.include(request,response);
            }
        
        %>
    </body>
</html>
