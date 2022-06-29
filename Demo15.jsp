<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css?<?php echo time(); ?>" />
<title>Registration Page</title>
</head>
<body>
<h1>  Government Schemes for persons with Disabilities </h1>
<div class="topnav">
  <a class="active" href="#Login">Login</a>
  <a href="About_us.jsp">About Us</a>
  <a href="Contact_us.jsp">Contact Us</a>
  <a href="Admin.jsp">Admin</a>
</div>
<div class="login">
<form id="login" method="post" action="login.jsp">
<h3>LOGIN HERE</h3>
<input type="text" name="u_name" placeholder="Enter UDID Here" required><br>
<input type="password" name="pa_wd" placeholder="Enter Password Here" required>
<a href = "login.jsp"><button class="btn">LOGIN</button></a> <br>
New User <a href="first_page.jsp"><button class="btn">Sign Up?</button></a><br> 
</form>
</div>
</body>
</html>