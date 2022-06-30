<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, db.DBConn, admin.AdminDAO"%>
<jsp:useBean id="admin" class="admin.Admin" scope="request"/>
<jsp:setProperty name="admin" property="adminName" value='<%=request.getParameter("adminName")%>'/>
<jsp:setProperty name="admin" property="adminEmail" value='<%=request.getParameter("adminEmail")%>'/>
<jsp:setProperty name="admin" property="adminPassword" value='<%=request.getParameter("adminPassword")%>'/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
            DBConn database = new DBConn();
            AdminDAO admindao = new AdminDAO();
            int result = admindao.addUser(admin);
            
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Add Record\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("admin-home.jsp");
                rd.include(request, response);
            }
            database.closeConnection();
        %>
    </body>
</html>