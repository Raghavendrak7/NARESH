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
<h1>Government Schemes for persons with Disabilities</h1>
<h2>Welcome
<%String u_name = session.getAttribute("u_name").toString();
		out.println("  "+u_name);%></h2>
<div class="topnav">
  <a  href="#home">Home</a>
  <a href="Personal_details.jsp">Personal Details</a>
  <a href="caretaker_details.jsp">Care Taker Details</a>
  <a class="active" href="scholarship.jsp">Scholarship Details</a>
  <a href="Quota.jsp">Job Quota Details</a>
  <a href="schemes.jsp">Schemes</a>
  <a href="Demo15.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
  
</div>
<div class="box">
<form action="scholarship.jsp" method="post">
<label>Select your annual Income:</label>
<select name="count" id="count">
    <option value="1">Rs.0-10000</option>
    <option value="2">Rs.10000-25000</option>
    <option value="3">Rs.25000-50000</option>
    <option value="4">Rs.50000-75000</option>
    <option value="5">Rs.75000-100000</option>
    <option value="6">Rs.100000-150000</option>
    <option value="7">Rs.150000-200000</option>
    <option value="8">Rs.200000-250000</option>
    <option value="9">Rs.250000 and above</option>
</select>
<input type="submit" name="submit" value="Check">
</form>
<%
String count1=null;
count1=request.getParameter("count");
if(count1!=null){
	if(Usr.schlorship(u_name, count1)){
		out.println("<br> You're elgible for scholarship");
		out.print("<br>Click here to know about Vacancies"+"<a href='Study.jsp'>Scholarship Description</a>");
	}
else out.print("<br> SORRY You're not elgible for Scholarship");
}
%>
</div>
</body>
</html>