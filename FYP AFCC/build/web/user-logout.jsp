<%-- 
    Document   : user-logout
    Created on : Jan 31, 2021, 10:55:20 PM
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
