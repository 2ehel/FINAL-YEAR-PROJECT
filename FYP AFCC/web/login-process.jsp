<%-- 
    Document   : login-process
    Created on : Jan 23, 2021, 2:36:29 PM
    Author     : ariff
--%>

<%@page import="user.User"%>
<%@page import="user.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            UserDAO userdao = new UserDAO();
            User user = userdao.login(email, password);
            int userId = user.getUserID();
            String username = user.getUser_name();
            
            session.setAttribute("userId", userId);
            session.setAttribute("username", username);
            

            if (userId == 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"You enter invalid email and password. Please try again\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.include(request, response);
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
                rd.include(request, response);
            }
        %>
    </body>
</html>