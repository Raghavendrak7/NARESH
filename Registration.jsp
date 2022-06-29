<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Rstyle.css" />
<title>Registration Page</title>
</head>
<%!String u_name;%>
<%!String pa_wd,fname,cid;%>
<%
u_name=request.getParameter("u_name");
pa_wd=request.getParameter("pa_wd");
fname=request.getParameter("name");
cid=request.getParameter("cid");
session.setAttribute("u_name",u_name);
session.setAttribute("cid",cid);
session.setAttribute("pa_wd",pa_wd);
%>
<h2>REGISTER HERE</h2>
<hr class="line">
<form id="pd" action="test2.jsp" method="post">
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
	<h4> TYPE OF DISABILITY : </h4><br>
	<select name="tod">
	<option value="0">NONE</option>
	<option value="1">BLINDNESS</option>
	<option value="2">HEARING IMPAIRMENT</option>
	<option value="3">MENTAL HEALTH</option>
	<option value="4">LOCOMOTOR DISABLITY</option>
	<option value="5">INTELLECTUAL DISABILITY</option>
	<option value="6">CEREBRAL PALSY</option>
	</select>
	<h4> CARE TAKER DETAILS : </h4><br>
    NAME <input type="text"  name="cname" required placeholder="Enter caretaker name"> &nbsp;&nbsp;
    AGE <input type="number" name="cage"> <br><br>
	GENDER:  Male <input type="radio" name="cgender" value="male"> Female <input type="radio" name="cgender" value="female"> Others <input type="radio" name="cgender" value="others"> <br> <br>
	MOBILE <input type="text"  name="cphno" required> &nbsp;&nbsp;
	H.NO <input type="text"  name="chno" required> &nbsp;&nbsp;
	STREET <input type="text"  name="cstreet" required> <br><br>
	STREET NO <input type="text"  name="cstno" required> &nbsp;&nbsp;
	LOCALITY <input type="text"  name="cloc" required> &nbsp;&nbsp;
	PINCODE <input type="number"  name="cpin" required> &nbsp;&nbsp;
<button type="submit" class="registerbtn">REGISTER</button>
</div>
</form>
</body>
</html>