<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="ConnTools.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Rstyle.css" />
<title>Update Page</title>
</head>
<body>
<form  action="update_cdetails.jsp" method="get">
<%!String u_name;%>
<%
u_name=session.getAttribute("u_name").toString();
%>
<h2>UPDATE HERE</h2>
<hr class="line">
<div class="details" >
	<h4> CARE TAKER DETAILS : </h4><br>
    NAME <input type="text"  name="cf1" id="cname" placeholder="Enter caretaker name"> &nbsp;&nbsp;
    AGE <input type="number" name="cage"> <br><br>
    GENDER:   Male <input type="radio" name="gender" value="Male"> Female <input type="radio" name="gender" value="Female"> Others <input type="radio" name="gender" value="Others"> <br><br>
	MOBILE <input type="text"  name="cphno"> &nbsp;&nbsp;
	H.NO <input type="text" name="chno" required> &nbsp; &nbsp;
	STREET <input type="text"  name="cstreet"> <br><br>
	STREET NO <input type="text"  name="cstno"> &nbsp;&nbsp;
	LOCALITY <input type="text"  name="cloc"> &nbsp;&nbsp;
	PINCODE <input type="number"  name="cpin"> &nbsp;&nbsp;
<button type="submit" class="registerbtn" name="ok" value="ok">UPDATE</button>
</div>
	</form>
<% String o=request.getParameter("ok");
	if(o!=null){
	Usr obj=new Usr();
	obj.cname=request.getParameter("cf1");
	obj.cage=request.getParameter("cage");
	obj.cgender=request.getParameter("gender");
	obj.cphno=request.getParameter("cphno");
	obj.chno=request.getParameter("chno");
	obj.cstreet=request.getParameter("cstreet");
	obj.cstno=request.getParameter("cstno");
	obj.cloc=request.getParameter("cloc");
	obj.cpin=request.getParameter("cpin");
	if(obj.ucd(u_name)){
		%><font color="green"><%out.print("Data Sucessfully updated");%></font><%
		}else{
		%><font color="red"><%out.print("Something went Wrong!");%></font><%
		}
	}
%>
</body>
</html>