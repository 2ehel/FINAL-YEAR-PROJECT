<%-- 
    Document   : checkout-process
    Created on : Jul 10, 2021, 12:31:59 PM
    Author     : ariff
--%>

<%@page import="product.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, db.DBConn, user.UserDAO"%>
<jsp:useBean id="product" class="product.Product" scope="request"/>
<jsp:setProperty name="product" property="productName" value='<%=request.getParameter("productName")%>'/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=request.getParameter("productName")%></h1>
    </body>
</html>
