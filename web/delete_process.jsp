<%-- 
    Document   : delete_process
    Created on : 6 Jun, 2021, 10:55:34 AM
    Author     : admin
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM users3 WHERE id="+id);
response.sendRedirect("index.html");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

