<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%
int id=Integer.parseInt(request.getParameter("id"));
String nm=request.getParameter("name");
double pr=Double.parseDouble(request.getParameter("price"));
int qty=Integer.parseInt(request.getParameter("quantity"));
PreparedStatement ps=con.prepareStatement("update products set name=?,price=?,quantity=? where product_id=?");
ps.setString(1,nm);
ps.setDouble(2, pr);
ps.setInt(3,qty);
ps.setInt(4,id);
ps.executeUpdate();
con.close();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Product</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h1>Updated Successfully</h1>
    <a href="viewProducts.jsp">View Products</a>
</body>
</html>
