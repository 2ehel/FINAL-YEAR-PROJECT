<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, db.DBConn, admin.AdminDAO"%>
<jsp:useBean id="admin" class="admin.Admin" scope="request"/>
<jsp:setProperty name="admin" property="adminName" value='<%=request.getParameter("adminName")%>'/>
<jsp:setProperty name="admin" property="adminEmail" value='<%=request.getParameter("adminEmail")%>'/>
<jsp:setProperty name="admin" property="adminPassword" value='<%=request.getParameter("adminPassword")%>'/>
<jsp:setProperty name="admin" property="adminID" value='<%=Integer.parseInt(request.getParameter("adminID"))%>'/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Endgame Tech CS</title>
    </head>
    <body>
        <%

            AdminDAO e = new AdminDAO();
            int adminID = Integer.parseInt(request.getParameter("adminID"));

            int result = e.updateAdmin(admin);

            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success update the Record\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("admin-account-details.jsp");
                rd.include(request, response);
            }

        %>
    </body>
</html>
