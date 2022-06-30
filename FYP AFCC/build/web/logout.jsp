<%-- 
    Document   : logout
    Created on : Jan 25, 2021, 12:58:27 PM
    Author     : ariff
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.include(request, response);
        %>
    </body>
</html>
