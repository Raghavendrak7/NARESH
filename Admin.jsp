<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css?<?php echo time(); ?>" />
<title>Admin Login Page</title>
</head>
<body>
<h1>  Government Schemes for persons with Disabilities </h1>
<div class="topnav">
  <a class="active" href="#Login">Login</a>
  <a href="About_us.jsp">About Us</a>
  <a href="Contact_us.jsp">Contact Us</a>
    <a href="Demo15.jsp">User</a>
</div>
<div class="login"> 
<form id="login" method="post" action="test3.jsp">
<h3>LOGIN HERE</h3>  
<input type="text" name="aid" placeholder="Enter AID Here"><br>
<input type="password" name="apwd" placeholder="Enter Password Here">
<a href = "test3.jsp"><button class="btn">LOGIN</button></a><br> 
</form>
</div>
</body>
</html>