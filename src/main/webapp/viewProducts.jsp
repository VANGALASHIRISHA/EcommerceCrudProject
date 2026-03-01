<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h2>All Products</h2>
<table border="1" cellspacing="2" cellpadding="3">
<th>Id</th>
<th>Name</th>
<th>Price</th>
<th>Quantity</th>
<th>Edit</th>
<th>Delete</th>
<tr>
<%
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select *from Products");
while(rs.next()){
	%>
	<tr><td><%=rs.getInt(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getDouble(3) %></td>
	<td><%=rs.getInt(4) %></td>
	<td><a href="editProduct.jsp?id=<%=rs.getInt(1)%>">Edit</a></td>
	<td><a href="deleteProduct.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
	</tr>
<%
}
%>
</table>
</body>
</html>