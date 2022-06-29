<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="ConnTools.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Styles.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Adding Schemes</title>
</head>
<body>
<h1>Government Schemes for persons with Disabilities </h1>
<div class="topnav">
    <a href="#home">Home</a>
	<a class="active" href="Update_schemes.jsp">Add Schemes </a>
	<a href="Delete_schemes.jsp">Modify Schemes</a>
	<a href="Search.jsp">Search</a>
	<a href="Sort.jsp">Sort</a>
	<a href="Admin.jsp" style = "float: right">Logout <i class="fa fa-sign-out"></i></a>
</div>		 
<div class="box">
<form method="post">
<%out.println("<br> ENTER NEW SCHEME DETAILS :<br> <br>");%>
Type of Disability
<select name="tod">
	<option value="0">NONE</option>
	<option value="1">BLINDNESS</option>
	<option value="2">HEARING IMPAIRMENT</option>
	<option value="3">MENTAL HEALTH</option>
	<option value="4">LOCOMOTOR DISABLITY</option>
	<option value="5">INTELLECTUAL DISABILITY</option>
	<option value="6">CEREBRAL PALSY</option>
	</select><br>
Scheme Name<input type="text" name="schme" size="100"><br>
<button type="submit" class="button" name="ok" value="ok">SUBMIT</button>
</form>
<%String o=request.getParameter("ok");
if(o!=null){
	String a=request.getParameter("tod");
	String b=request.getParameter("schme");
	if(Reg.newscheme(a,b)){
		out.println("<br>New Scheme Updated Sucessfully");
	}else
		out.println("<br>Something Wrong!");
} %>
</div>
</body>
</html>