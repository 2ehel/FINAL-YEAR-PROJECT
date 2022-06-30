<%-- 
    Document   : login-process
    Created on : Jan 23, 2021, 2:36:29 PM
    Author     : ariff
--%>

<%@page import="admin.Admin"%>
<%@page import="admin.AdminDAO"%>
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

            AdminDAO admindao = new AdminDAO();
            Admin admin = admindao.login(email, password);
            int adminID = admin.getAdminID();
            String adminName = admin.getAdminName();
            
            session.setAttribute("adminID", adminID);
            session.setAttribute("adminName", adminName);
            

            if (adminID == 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"You enter invalid email and password. Please try again\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("admin-login.jsp");
                rd.include(request, response);
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("admin-home.jsp");
                rd.include(request, response);
            }
        %>
    </body>
</html>