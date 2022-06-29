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
<form action="update_pdetails.jsp" method="get">
<%!String u_name;%>
<%
u_name=session.getAttribute("u_name").toString();
%>
<h2>UPDATE HERE</h2>
<hr class="line">
<div class="details" >
	<h4>  PERSONAL  DETAILS :</h4>
	NAME  <input type="text" name="fname" id="name" placeholder="Enter your name" required> &nbsp;&nbsp;
	AGE  <input type="number" name="page" required> <br><br>
	D.O.B <input type="text" name="pdob" placeholder="dd/mm/yyyy" required> &nbsp;&nbsp;
	GENDER:   Male <input type="radio" name="gender" value="male"> Female <input type="radio" name="gender" value="female"> Others <input type="radio" name="gender" value="others"> <br><br>
	MOBILE <input type="text"  name="phno" required>
	
	<h4>  ADDRESS OF DISABLED PERSON : </h4>
     H.NO <input type="text" name="hno" required> &nbsp; &nbsp;
	 STREET <input type="text" name="street" required> &nbsp;&nbsp;
	 STREET NO <input type="text" name="sno" required> <br><br>
	 LOCALITY <input type="text" name="loc" required> &nbsp;&nbsp;
	 PINCODE <input type="number"  name="pin" required>
	 
<button type="submit" class="registerbtn" name="ok" value="ok">Update</button>
</div>
	</form>
	<% String o=request.getParameter("ok");
	if(o!=null){
	Usr obj=new Usr();
	obj.fname=request.getParameter("fname");
	obj.age=request.getParameter("page");
	obj.dob=request.getParameter("pdob");
	obj.gender=request.getParameter("gender");
	obj.phn_no=request.getParameter("phno");
	obj.hno=request.getParameter("hno");
	obj.sname=request.getParameter("street");
	obj.sno=request.getParameter("sno");
	obj.locality=request.getParameter("loc");
	obj.pincode=request.getParameter("pin");
	if(obj.upd(u_name)){
		%><font color="green"><%out.print("Data Sucessfully updated");%></font><%
		}else{
		%><font color="red"><%out.print("Something went Wrong!");%></font><%
		}
	}
%>
</body>
</html>