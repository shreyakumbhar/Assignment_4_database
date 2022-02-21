<%-- 
    Document   : update
    Created on : 6 Jun, 2021, 9:38:55 AM
    Author     : admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from users3 where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="update-process.jsp">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
Full name:<br>
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
<br>
Email:<br>
<input type="text" name="email" value="<%=resultSet.getString("email") %>">
<br>
Address:<br>
<input type="text" name="addr" value="<%=resultSet.getString("addr") %>">
<br>
POst:<br>
<input type="text" name="post" value="<%=resultSet.getString("post") %>">
<br>
Phone Number:<br>
<input type="tel" name="phone" value="<%=resultSet.getString("phone") %>">
<br>
Salary:<br>
<input type="number" name="sal" value="<%=resultSet.getString("sal") %>">
<br>

<br>
<button type="submit" class="registerbtn">Update</button>
</form>

 <style>
            body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: white;
}

* {
  box-sizing: border-box;
}
            .container {
    width: 50%;
    height: 100%;
  padding: 16px;
  background-color:cyan;
}
  
            form {
                margin: 0 auto;
                width: 600px;
            }
            
 input[type=text], input[type=text],input[type=text],input[type=text],input[type=tel],input[type=number]{
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=text]:focus ,input[type=text]:focus,input[type=email]:focus,input[type=tel]:focus,input[type=number]:focus{
  background-color: #ddd;
  outline: none;
}
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
        </style>

 
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
