<%-- 
    Document   : admin-product-add-process
    Created on : Jan 26, 2021, 3:39:50 AM
    Author     : ariff
--%>

<%@page import="product.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, db.DBConn, user.UserDAO"%>
<jsp:useBean id="product" class="product.Product" scope="request"/>
<jsp:setProperty name="product" property="productName" value='<%=request.getParameter("productName")%>'/>
<jsp:setProperty name="product" property="productCategory" value='<%=request.getParameter("productCategory")%>'/>
<jsp:setProperty name="product" property="productPrice" value='<%=Integer.parseInt(request.getParameter("productPrice"))%>'/>
<jsp:setProperty name="product" property="productCondition" value='<%=request.getParameter("productCondition")%>'/>
<jsp:setProperty name="product" property="totalStock" value='<%=Integer.parseInt(request.getParameter("totalStock"))%>'/>
<jsp:setProperty name="product" property="productDesc" value='<%=request.getParameter("productDesc")%>'/>
<jsp:setProperty name="product" property="productImage" value='<%=request.getParameter("productImage")%>'/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
            DBConn database = new DBConn();
            ProductDAO productdao = new ProductDAO();
            int result = productdao.addProduct(product);
            
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Add Record\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("viewProduct.jsp");
                rd.include(request, response);
            }
            database.closeConnection();
        %>
    </body>
</html>
