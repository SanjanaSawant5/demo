<%@page import="com.test.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="styles.css">
<title>Display User Information</title>
</head>
<body>
	<h1>User Information</h1>
	<%
	User user = (User) session.getAttribute("user");
	%>
	<p>Name: <%=user.getName()%></p>
	<p>Address: <%=user.getAddress()%></p>
	<p>Age: <%=user.getAge()%></p>
	
 <form action="LogoutServlet" method="GET">
  <button type="submit">Logout</button>
</form>

</body>

<style>
h1 {
  font-size: 36px;
  color: #333;
  text-align: center;
  margin-top: 20px;
}
p {
  font-size: 18px;
  color: #666;
  margin-bottom: 10px;
  text-align: center;
}
body {
  font-family: Arial, sans-serif;
  background-color: #f5f5f5;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  margin: auto;   
}

</style>
</html>