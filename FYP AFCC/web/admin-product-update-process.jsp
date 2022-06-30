<%-- 
    Document   : admin-product-update-process
    Created on : Jan 26, 2021, 4:10:57 AM
    Author     : ariff
--%>

<%@page import="product.ProductDAO"%>
<jsp:useBean id="product" class="product.Product" scope="request" />
<jsp:setProperty name="product" property="productName" value='<%=request.getParameter("productName")%>'/>
<jsp:setProperty name="product" property="productCategory" value='<%=request.getParameter("productCategory")%>'/>
<jsp:setProperty name="product" property="productPrice" value='<%=Integer.parseInt(request.getParameter("productPrice"))%>'/>
<jsp:setProperty name="product" property="productCondition" value='<%=request.getParameter("productCondition")%>'/>
<jsp:setProperty name="product" property="totalStock" value='<%=request.getParameter("totalStock")%>'/>
<jsp:setProperty name="product" property="productDesc" value='<%=request.getParameter("productDesc")%>'/>
<jsp:setProperty name="product" property="productID" value='<%=request.getParameter("productID")%>'/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Endgame Tech CS</title>
    </head>
    <body>
        <%
            ProductDAO productdao = new ProductDAO();
            String productID = request.getParameter("productID");
            int result = productdao.updateProduct(product);
            
             if(result > 0){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success update the Record\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("viewProduct.jsp");
                rd.include(request,response);
            }
        
        %>
    </body>
</html>
