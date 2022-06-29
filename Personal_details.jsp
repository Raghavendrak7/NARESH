<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ConnTools.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Personal Details</title>
</head>
<%!String u_name;%>
<body>
<h1>Government Schemes for persons with Disabilities</h1>
<h2>Welcome
<%u_name = session.getAttribute("u_name").toString();
		out.println("  "+u_name);
		session.setAttribute("u_name",u_name);%></h2>
<div class="topnav">
  <a  href="#home">Home</a>
  <a class="active" href="Personal_details.jsp">Personal Details</a>
  <a href="caretaker_details.jsp">Care Taker Details</a>
  <a href="scholarship.jsp">Scholarship Details</a>
  <a href="Quota.jsp">Job Quota Details</a>
  <a href="schemes.jsp">Schemes</a>
  <a href="Demo15.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
</div>

<div class="box">
<%
Usr obj=Usr.pd(u_name);
out.print("DETAILS: <br>");
out.println("Name: "+obj.fname+"<br>");
out.println("Age: "+obj.age+"<br>");
out.println("Dob: "+obj.dob+"<br>"); 
out.println("Gender: "+obj.gender+"<br>");  
out.println("Contact: "+obj.phn_no+"<br><br>ADDRESS:<br>");
	out.println("House no."+obj.hno+ ", Street name: "+obj.sname+", Street no. "+obj.sno+" <br> Locality : "+obj.locality+", Pincode: "+obj.pincode);
%><br>
<a href="update_pdetails.jsp"><button>Update</button></a>
</div>
</body>
</html>