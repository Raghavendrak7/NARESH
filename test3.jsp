<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="ConnTools.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css?<?php echo time(); ?>" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>
<%
String aid=null,apwd=null;
aid=request.getParameter("aid");
apwd=request.getParameter("apwd");
session.setAttribute("aid",aid);
session.setAttribute("apwd",apwd);
if(Usr.alog(aid, apwd)){%>
    <h1>Welcome To Our Home Page Administrator:
    <%out.println("  "+aid);%></h1>
	<div class="topnav">
	<a class="active" href="#home">Home</a>
	<a href="Update_schemes.jsp">Add Schemes </a>
	<a href="Delete_schemes.jsp">Modify Schemes</a>
	<a href="Search.jsp">Search</a>
	<a href="Sort.jsp">Sort</a>
	<a href="Admin.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
	</div><%
	}else
		out.println("Invalid Credentials Check Username or Password2!"+"<a href='Admin.jsp'>Retry</a>");%>
</body>
</html>