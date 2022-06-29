<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="ConnTools.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="Styles.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Job Quota</title>
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
  <a href="scholarship.jsp">Scholarship Details</a>
  <a class="active" href="Quota.jsp">Job Quota Details</a>
    <a href="schemes.jsp">Schemes</a>
  <a href="Demo15.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
</div>
<div class="box">
<form method="post" action="Quota.jsp">
<label for="count">Select total number of attempts:</label>
<select name="count" id="count">
    <option value="0">0</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
</select>
<input type="submit" name="submit" value="Check">
</form>
<%
String count1=null;
count1=request.getParameter("count");
if(count1!=null){
	if(Usr.quota(u_name,count1)){
		out.println("<br> You're elgible for Job");
		out.print("<br>Click here to know about Vacancies"+"<a href='Job.jsp'> Job Description</a>");
	}
else out.print("<br> SORRY You're not elgible for this!!");
}
%>
</div>
</body>
</html>