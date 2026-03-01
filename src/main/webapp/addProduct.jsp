<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body bgcolor="deeppink">
<h1 style="color:skyblue;text-align:center;">E-Commerce</h1>
<h2 stlye="color:blue;" >Add New Product</h2>
<form action="insertProduct.jsp" method="get">
<p>Product Name:<input type="text" name="name" required></p>
<p>Price:<input type="text" name="price" required></p>
<p>Quantity:<input type="text" name="Quantity" required></p>
<input type="submit" value="Add Product">
</form>
</body>
</html>