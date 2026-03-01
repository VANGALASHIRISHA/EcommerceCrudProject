<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
String url="jdbc:oracle:thin:@localhost:1521:xe";
String username="system";
String password="hello";
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con =DriverManager.getConnection(url,username,password);
%>