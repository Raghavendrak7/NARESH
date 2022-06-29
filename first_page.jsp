<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html> 
<head> 
<link rel="stylesheet" type="text/css" href="style.css" />
<title>NEW USER</title>
</head> 
<body>
<form action="Registration.jsp" method="post">
<div class="login">
	Full Name <input type="text" name="name" placeholder="Enter full Name" required>
	Care_Taker Id<input type="text" name="cid" placeholder="Enter Care Taker Id" required>
	Udid_No. <input type="text" name="u_name" placeholder="Enter UDID" required>
	Password <input type="password" name="pa_wd" placeholder="password" required>
    <button type="submit" class="btn">SUBMIT</button>
</div>
</form>
</body> 
</html>