<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%
int id = Integer.parseInt(request.getParameter("id"));
PreparedStatement ps = con.prepareStatement("delete from Products Where Product_id=?");
ps.setInt(1, id);
ps.executeUpdate();
con.close();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Product</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>style.css">
</head>
<body>
    <h1>Delete Successfully</h1>
    <a href="viewProducts.jsp">View Products</a>
</body>
</html>
