<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="indexstyle/style.css" />

<title>Sucessful</title>
</head>
<body>
<%@page import="java.sql.*"%>

<%
Connection con=null;
try {
	
	String id=request.getParameter("userid");
	if(id==null){response.sendRedirect("clientsingup.html");}
	String username=request.getParameter("username");
	String mob=request.getParameter("mobile");
	String password1=request.getParameter("password1");

	String password2=request.getParameter("passwor2");
	//String password=request.getParameter("password");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345678");
	PreparedStatement pstmt=con.prepareStatement("insert into userdetails values(?,?,?,?)");
	pstmt.setString(1,id);
	pstmt.setString(2,username);
	pstmt.setString(3, mob);
	pstmt.setString(4, password1);
	int k=pstmt.executeUpdate();
    out.println("<center><h1 style='color:Green;font-size:100px;'>Congratulation :) you are successfull joined us</h1><center> "+k);
    out.println("<h1><a href='index.html'>Home page</a></h1>");


	}

catch(Exception e){}

%>
|<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="footer">
      KishorAgnihotri &copy; Code..z |       | 
       <a href="index.html">Home Page :-)</a>|<a href="aboutus.html">Know US </a>
    </div>

</body>
</html>