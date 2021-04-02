<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/clientsingin.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>client update details</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
try
{
	//take userid from session make go ahead :)
	String id=(String)session.getAttribute("id");
	if(id==null){response.sendRedirect("clientsingin.html");}
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345678");
	PreparedStatement ps=con.prepareStatement("select *from userdetails where userid=?");
	ps.setString(1,id);
	ResultSet rs=ps.executeQuery();
	
%><% 
if(rs.next()) 
{
%><br>
<form action="clientupdatedb.jsp"method="post">
<h1>update</h1>
 
    <p>
      <label for="login">UserID:</label>
      <input type="text" name="userid" id="login"value="<%=rs.getString(1) %>" readonly>
    </p>
<br><br>
    <p>
      <label for="password">UserName:</label>
      <input type="text" name="username" id="password" value="<%=rs.getString(2) %>">
    </p>
    <br><br>
    <p>
      <label for="password">Mobile:</label>
      <input type="text" name="mobile" id="password" value="<%=rs.getString(3) %>">
    </p>
    <br><br>
    <p>
      <label for="password">Password:</label>
      <input type="text" name="password" id="password" value="<%=rs.getString(4) %>">
    </p>
<br><br>
    
      <button type="submit"value="update" class="login-button">Update</button>
    
    </form>
    

 <% }
}
catch(Exception e){}

%>
<div id="footer">
      KishorAgnihotri &copy; Code..z | <a href="clientsingup.html">Create Account :)</a>
       | <a href="clientsingin.html">Log-In :)</a> | 
       <a href="employee.html">LoginAs-Employee :-)</a>|<a href="aboutus.html">Know US </a>
    </div>
</body>
</html>