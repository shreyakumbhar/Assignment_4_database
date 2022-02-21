>
<%-- 
    Document   : update-process
    Created on : 6 Jun, 2021, 9:48:24 AM
    Author     : admin
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/test";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String name=request.getParameter("name");
String email=request.getParameter("email");
String addr=request.getParameter("addr");
String post=request.getParameter("post");
String phone=request.getParameter("phone");
String sal=request.getParameter("sal");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update users3 set id=?,name=?,email=?,addr=?,post=?,phone=?,sal=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, name);
ps.setString(3, email);
ps.setString(4, addr);
ps.setString(5, post);
ps.setString(6, phone);
ps.setString(7, sal);

int i = ps.executeUpdate();
if(i > 0)
{
 response.sendRedirect("index.html");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
