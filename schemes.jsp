<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="ConnTools.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css" />
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
  <a href="scholarship.jsp">Scholarship Details</a>
  <a href="Quota.jsp">Job Quota Details</a>
  <a class="active" href="schemes.jsp">Schemes</a>
  <a href="Demo15.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
  </div>
  <div class="box">
<%
ArrayList<String> a=new ArrayList<String>();
a=Usr.hisschemes(u_name);
	out.print("SCHEMES: <br>");
	for(int i=0;i<a.size();i++){
		%><%=i+1%>.<%=a.get(i) %><br><%
	}
	%>
</div>
</body>
</html>