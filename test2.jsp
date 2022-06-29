<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="ConnTools.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Third_Page(Back_end)</title>
</head>
<body>
<%
	Usr n=new Usr();
	n.udid=(String)session.getAttribute("u_name");//u_name
	n.pwd=(String)session.getAttribute("pa_wd");//pa_wd
	n.fname=request.getParameter("name");//fname
	n.cid=(String)session.getAttribute("cid");
	n.fname=request.getParameter("fname");
	n.age=request.getParameter("page");
	n.dob=request.getParameter("pdob");
	n.gender=request.getParameter("gender");
	n.phn_no=request.getParameter("phno");
	n.tod=request.getParameter("tod");
	n.hno=request.getParameter("hno");
	n.sname=request.getParameter("street");
	n.sno=request.getParameter("sno");
	n.locality=request.getParameter("loc");
	n.pincode=request.getParameter("pin");
	n.cname=request.getParameter("cname");
	n.cage=request.getParameter("cage");
	n.cphno=request.getParameter("cphno");
	n.cgender=request.getParameter("cgender");
	n.chno=request.getParameter("chno");
	n.cstreet=request.getParameter("cstreet");
	n.cstno=request.getParameter("cstno");
	n.cloc=request.getParameter("cloc");
	n.cpin=request.getParameter("cpin");
	if(n.checkexist()){
		if(n.insertreg()){
			%><font color="green"><%out.print("registered sucessfully with udid:"+n.udid+"<a href='Demo15.jsp'>Back</a>");%></font>
			<%}
		else {
			%><font color="red"><%out.print("something went wrong"+"<a href='first_page.jsp'>Retry</a>");%></font><%
		}
	}else {
		%><font color="red"><%out.print("Details Already Exists"+"<a href='Demo15.jsp'>Back</a>");%></font><%
	}
	%>
</body>
</html>