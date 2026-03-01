<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp"%>
<%
int id = Integer.parseInt(request.getParameter("id"));
PreparedStatement ps = con.prepareStatement("select * from products where product_id=?");
ps.setInt(1, id);
ResultSet rs = ps.executeQuery();
rs.next();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Product</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h2>Edit Product</h2>
    <form action="updateProduct.jsp">
        <input type="hidden" name="id" value="<%=id %>"/>
        <p>Name: <input type="text" name="name" value="<%=rs.getString("name") %>"/></p>
        <p>Price: <input type="text" name="price" value="<%=rs.getDouble("price") %>"/></p>
        <p>Quantity: <input type="text" name="quantity" value="<%=rs.getInt("quantity") %>"/></p>
        <input type="submit" value="Update"/>
    </form>
</body>
</html>
