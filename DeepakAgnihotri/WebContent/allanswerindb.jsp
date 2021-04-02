<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import="java.sql.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="indexstyle/style.css" />
<title>Your Profile:)</title>
</head>
<body>

<%
try {
	
	//make session here then it show the detail according to userid.
	//String id=request.getParameter("userid");
	//String password=request.getParameter("password");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345678");
	Statement statement = con.createStatement();
 
	//String id=(String)session.getAttribute("id");
	
	//	out.println(" :-"+id);
	      ResultSet resultset = statement.executeQuery("select * from answer");// where userid = '" + id + "'") ; 

	      /*if(!resultset.next()) {
	          out.println("Sorry, could not find that Userid. ");
	          out.println("PLZ LOGIN FIRST :");
	  		out.println("<a href='clientsingin.html'>SING-IN</a>");

	      } */while(resultset.next()) {
	  %>

	  <TABLE BORDER="1">
	      <TR>
	         <TH>S_NO></TH>
	         <TH>Q</TH>
	         <TH>Ans.</TH>
	         
	         
	     </TR>
	     <TR>
	         <TD> <%= resultset.getString(1) %> </TD>
	         <TD> <%= resultset.getString(2) %> </TD>
	         
	         <TD><h1> <%= resultset.getString(3) %></h1> </TD>
	        
	     </TR>
	 </TABLE>
	 <BR>
	  <% 
}}
catch(Exception e){}

%><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	



</body>
</html>