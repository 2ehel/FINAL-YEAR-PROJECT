

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, db.DBConn, user.UserDAO"%>
<jsp:useBean id="user" class="user.User" scope="request"/>
<jsp:setProperty name="user" property="fname" value='<%=request.getParameter("fname")%>'/>
<jsp:setProperty name="user" property="lname" value='<%=request.getParameter("lname")%>'/>
<jsp:setProperty name="user" property="user_name" value='<%=request.getParameter("user_name")%>'/>
<jsp:setProperty name="user" property="user_password" value='<%=request.getParameter("user_password")%>'/>
<jsp:setProperty name="user" property="user_email" value='<%=request.getParameter("user_email")%>'/>
<jsp:setProperty name="user" property="user_phone" value='<%=request.getParameter("user_phone")%>'/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
            DBConn database = new DBConn();
            UserDAO userdao = new UserDAO();
            int result = userdao.addUser(user);
            
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Add Record\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.include(request, response);
            }
            database.closeConnection();
        %>
    </body>
</html>