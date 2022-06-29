<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="ConnTools.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Care Taker Details</title>
</head>
<%!String u_name;%>
<%!String cid1;%>
<body>
<%
u_name = session.getAttribute("u_name").toString();
%>
<h1>Government Schemes for persons with Disabilities</h1>
<h2>Welcome<%out.println("  "+u_name);%></h2>
<div class="topnav">
  <a  href="#home">Home</a>
  <a href="Personal_details.jsp">Personal Details</a>
  <a class="active" href="caretaker_details.jsp">Care Taker Details</a>
  <a href="scholarship.jsp">Scholarship Details</a>
  <a href="Quota.jsp">Job Quota Details</a>
  <a href="schemes.jsp">Schemes</a>
  <a href="Demo15.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
</div>
<div class="box"> 
<%
Usr as=Usr.cd(u_name);
out.print("DETAILS: <br>");
out.println("Name: "+as.cname+"<br>");
out.println("Age: "+as.cage+"<br>"); 
out.println("Gender: "+as.cgender+"<br>");  
out.println("Contact: "+as.cphno+"<br><br>ADDRESS:<br>");
out.println("House no."+as.chno+ ", Street name: "+as.cstreet+", Street no. "+as.cstno+" <br> Locality : "+as.cloc+", Pincode: "+as.cpin);
%><br>
<a href="update_cdetails.jsp"><button>Update</button></a>
</div>
</body>
</html>