<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="ConnTools.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Delete Data</title>
</head>
<body>
<h1>  Government Schemes for persons with Disabilities </h1>
<div class="topnav">
  <a  href="#home">Home</a>
		  <a href="Update_schemes.jsp">Add Schemes </a>
		  <a class="active" href="Delete_schemes.jsp">Modify Schemes</a>
		  <a href="Search.jsp">Search</a>
		  <a href="Sort.jsp">Sort</a>
		  <a href="Admin.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
		</div>
		<div class="box"> 
<form action="modifying.jsp" method="get">
SchemeNo:<input type="text" name="sn">
TOD:<select name="tod">
	<option value="1">BLINDNESS</option>
	<option value="2">HEARING IMPAIRMENT</option>
	<option value="3">MENTAL HEALTH</option>
	<option value="4">LOCOMOTOR DISABLITY</option>
	<option value="5">INTELLECTUAL DISABILITY</option>
	<option value="6">CEREBRAL PALSY</option>
	</select><br>
Scheme:<input type="text" name="schme" size="100"><br>
<button type="submit" name="ok" value="ok">Modify</button>
</form>
<%String o=request.getParameter("ok");
if(o!=null){
String a=request.getParameter("sn");
String b=request.getParameter("tod");
String c=request.getParameter("schme");
if(Reg.checktodscheme(a, b)){
	if(Reg.modify(a,b,c)){ 
		%><font color="green"><%out.print("Scheme Sucessfully updated");%></font><%
	}else{
		%><font color="red"><%out.print("Something went Wrong!");%></font><%}
	}else{
		%><font color="red"><%out.print("No Scheme Present with SchemeNo "+a+" of Selected Disability.");%></font><%
		}
}
%>
</div>
</body>
</html>