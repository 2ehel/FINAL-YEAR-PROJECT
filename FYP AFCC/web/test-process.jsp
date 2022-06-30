<%-- 
    Document   : test-process
    Created on : Jan 27, 2022, 1:18:31 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p><b>Welcome User:</b>
            <%= request.getParameter("uname")%>
                    
   <%= request.getParameter("btnCalculate")%>
</p>
    </body>
</html>
