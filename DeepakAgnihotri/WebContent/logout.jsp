<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
<link rel="stylesheet" type="text/css" href="indexstyle/style.css" />

</head>
<body style="background:black;">
<% session.invalidate(); %>
<center><h1 style="font-size:150px;color:yellow;">LogOut Successful :)</h1></center>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="footer">
      KishorAgnihotri &copy; KnowledgeBCSS |      
       <a href="index.html">Home Page :-)</a>|<a href="aboutus.html">Know US </a>
    </div>
</body>
</html>