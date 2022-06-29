<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="ConnTools.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="Styles.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Search By NAME or PHno.</h3>
<form method="post">
<input type="text" name="search" placeholder="Please give phno Or Name">
<button type="submit" name="save" class="btn btn-primary">Search</button>
</form>
<a href="Update_schemes.jsp"><button>Back</button></a>
<%
String e=null;
e=request.getParameter("search");
Searching s=new Searching();
if(e!=null){
List<Usr> list=s.search(e);
%>
<table border="1" class="center">
	<tr>
	<th>User Name</th>
	<th>User ID</th>
	<th>TOD</th>
	<th>Age</th>
	<th>DOB</th>
	<th>PHNO.</th>
	<th>H No</th>
	<th>Street</th>
	<th>Street no</th>
	<th>Locality</th>
	<th>Pin code</th>
	<th>Care taker Name</th>
	<th>Care taker ID</th>
	<th>CAge</th>
	<th>CPHNO.</th>
	</tr> 
	<%
for(Usr i:list){
	%>
	<tr>
	<td><%=i.fname %></td>
	<td><%=i.udid %></td>
	<td><%=i.tod %></td>
	<td><%=i.age %></td>
	<td><%=i.dob %></td>
	<td><%=i.phn_no %></td>
	<td><%=i.hno %></td>
	<td><%=i.sname %></td>
	<td><%=i.sno %></td>
	<td><%=i.locality %></td>
	<td><%=i.pincode %></td>
	<td><%=i.cname %></td>
	<td><%=i.cid %></td>
	<td><%=i.cage %></td>
	<td><%=i.cphno %></td>
	</tr>
	<%
}
}
%>
</table>
</body>
</html>