<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<html>
<head>
    <title>Product Added</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/style.css" />
</head>
<body>
<%
String nm=request.getParameter("name");
String price=request.getParameter("price");
String qty=request.getParameter("Quantity");
PreparedStatement pst=con.prepareStatement("insert into Products (name,price,quantity) values(?,?,?)");
double pr=Double.parseDouble(price);
int qy=Integer.parseInt(qty);
pst.setString(1,nm);
pst.setDouble(2,pr);
pst.setInt(3,qy);
pst.executeUpdate();
con.close();
%>
<h3>Product Added Successfully</h3>
<a href="viewProducts.jsp">View Products</a>
</body>
</html>
