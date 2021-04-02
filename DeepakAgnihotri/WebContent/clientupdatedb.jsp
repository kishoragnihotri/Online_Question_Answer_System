<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update details</title>
<link rel="stylesheet" type="text/css" href="indexstyle/style.css" />

</head>
<body>
<%@page import="java.sql.*" %>
<%
try
{
String userid=request.getParameter("userid");
if(userid==null){response.sendRedirect("clientsingin.html");}
String name=request.getParameter("username");
String mobile=request.getParameter("mobile");
String password=request.getParameter("password");

//int id=Integer.parseInt(str_id);
//String name=request.getParameter("name");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345678");
PreparedStatement ps=con.prepareStatement("UPDATE userdetails SET username = ?,mobile=?,password=?  WHERE userid = ?");;
ps.setString(1,userid);
ps.setString(2,name);
ps.setString(3,mobile);
ps.setString(4,password);
ps.executeUpdate(); %>
<center><h1 style="font-size:150px;color:yellow;"><% out.println("Date Update Successfully"); %></h1></center>

       |<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="footer">
      KishorAgnihotri &copy; KnowledgeBCSS |  <% 
out.println("<a href='clientdetailshow.jsp'>view detail</a>");
}
catch(Exception e){}

%>      | <a href="logout.jsp">Log-Out :)</a> | 
       <a href="index.html">Home Page :-)</a>|<a href="aboutus.html">Know US </a>
    </div>

</body>
</html>