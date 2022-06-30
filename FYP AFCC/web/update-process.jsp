<%-- 
    Document   : update-process
    Created on : Jan 25, 2021, 1:13:08 PM
    Author     : ariff
--%>
<%@page import="user.UserDAO"%>
<jsp:useBean id="user" class="user.User" scope="request"/>
<jsp:setProperty name="user" property="fname" value='<%=request.getParameter("fname")%>'/>
<jsp:setProperty name="user" property="lname" value='<%=request.getParameter("lname")%>'/>
<jsp:setProperty name="user" property="user_name" value='<%=request.getParameter("user_name")%>'/>
<jsp:setProperty name="user" property="user_password" value='<%=request.getParameter("user_password")%>'/>
<jsp:setProperty name="user" property="user_email" value='<%=request.getParameter("user_email")%>'/>
<jsp:setProperty name="user" property="user_phone" value='<%=request.getParameter("user_phone")%>'/>
<jsp:setProperty name="user" property="userID" value='<%=Integer.parseInt(request.getParameter("userID"))%>'/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Endgame Tech CS</title>
    </head>
    <body>
        <%

            UserDAO e = new UserDAO();
            int userID = Integer.parseInt(request.getParameter("userID"));

            int result = e.updateUser(user);

            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success update the Record\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("account-details.jsp");
                rd.include(request, response);
            }

        %>
    </body>
</html>
