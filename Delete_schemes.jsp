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
<title>Deleting Schemes</title>
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
<form method="post" action="Delete_schemes.jsp"> 
Enter the type of disability for the scheme to be modified:
<select name="tod">
	<option value="0">NONE</option>
	<option value="1">BLINDNESS</option>
	<option value="2">HEARING IMPAIRMENT</option>
	<option value="3">MENTAL HEALTH</option>
	<option value="4">LOCOMOTOR DISABLITY</option>
	<option value="5">INTELLECTUAL DISABILITY</option>
	<option value="6">CEREBRAL PALSY</option>
	</select>
<button type="submit" class="button" name="ok" value="ok">SUBMIT</button>
</form>
<%String o=request.getParameter("ok");
if(o!=null){
	String tod1=request.getParameter("tod");
	ArrayList<String> a=Reg.dschemes(tod1);%>
	<table border="1" class="center">
	<tr><th>Scheme no.</th><th>Scheme</th></tr>
	<%for(int i=0;i<a.size();i+=2){ %>
	<tr>
	<td><%=a.get(i) %></td>
	<td><%=a.get(i+1) %></td>
	</tr>
	<%} %>
	</table>
	<a href="deleting.jsp">DELETE</a>
	<%out.print("  or  "); %>
	<a href="modifying.jsp">MODIFY</a>
	<% } %>
</div>
</body>
</html>