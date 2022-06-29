<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="ConnTools.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css?<?php echo time(); ?>" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Home Page</title>
</head>
<body>
<%
String u_name="",pa_wd="";
u_name=request.getParameter("u_name");
pa_wd=request.getParameter("pa_wd");
session.setAttribute("u_name", u_name);
if(Usr.log(u_name,pa_wd)){
	%>
    <h1>Welcome To Our Home Page<%out.println("  "+u_name);%></h1>
	<div class="topnav">
	  <a class="active" href="#home">Home</a>
	  <a href="Personal_details.jsp">Personal Details</a>
	  <a href="caretaker_details.jsp">Care Taker Details</a>
	  <a href="scholarship.jsp">Scholarship Details</a>
	  <a href="Quota.jsp">Job Quota Details</a>
	  <a href="schemes.jsp">Schemes</a>
	 <a href="Demo15.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a> 
	</div>
	<%
}else
	out.println("Invalid Credentials Check Username or Password2!"+"<a href='Demo15.jsp'>Retry</a>");
%>
</body>
</html>