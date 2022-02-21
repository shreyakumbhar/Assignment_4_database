<%-- 
    Document   : process
    Created on : 5 Jun, 2021, 9:56:21 PM
    Author     : admin
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String addr=request.getParameter("addr");
String post=request.getParameter("post");
String phone=request.getParameter("phone");
String sal=request.getParameter("sal");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into users3(name,email,addr,post,phone,sal)values('"+name+"','"+email+"','"+addr+"','"+post+"','"+phone+"','"+sal+"')");
 response.sendRedirect("index.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
