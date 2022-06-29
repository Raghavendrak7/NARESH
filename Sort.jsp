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
<form>
<br>
Sort By:<select name="soom">
<option value="null">none</option>
<option value="name">name</option>
<option value="age">age</option>
</select>
<input type="submit" name="Sort" value="Sort">
</form>
<a href="Update_schemes.jsp"><button>Back</button></a>
<%String type=request.getParameter("soom");
Searching a=new Searching();
List<Sl> list=a.searchall();
if(type!=null){
	Sl b=new Sl();
if(type.equals("name"))
{
	Collections.sort(list, b.sn);}
if(type.equals("age"))
{
Collections.sort(list, b.sa);}
}
%>
<table border="1" class="center">
<tr>
<th>User Name</th>
<th>User ID</th>
<th>TOD</th>
<th>Age</th>
<th>Gender</th>
<th>DOB</th>
<th>PHNO.</th>
<th>Care taker Name</th>
<th>Care taker ID</th>
</tr> 
<%
for(Sl i:list){
%>
<tr>
<td><%=i.fname %></td>
<td><%=i.udid %></td>
<td><%=i.tod %></td>
<td><%=i.age %></td>
<td><%=i.gender %></td>
<td><%=i.dob %></td>
<td><%=i.phn_no %></td>
<td><%=i.cname %></td>
<td><%=i.cid %></td>
</tr>
<%
}
//}
%>
</table>
</body>
</html>