<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome :)</title>
<link rel="stylesheet" type="text/css" href="indexstyle/style.css" />

</head>
<body>
<%@page import="java.sql.*" %>
<%
Connection con=null;
try {
	
	
	//String password=request.getParameter("password");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345678");
	//out.println(" connection stablished <br><br>");
	String id=request.getParameter("userid");
	//String password1=request.getParameter("password");

	//out.println("<h1>userid-: "+id+"</h1><br><h2>password-: "+password1+"</h2>");
	 PreparedStatement pstmt=con.prepareStatement("delete  from userdetails where userid=? ");
	pstmt.setString(1,id);
	//pstmt.//setString(2,password1);
	int i=pstmt.executeUpdate();
	//out.println(rs);
	if(i>0){
		//session.setAttribute("id",id);
		out.println(" <h1 style='color:green;'><br>Welcome:)<br></h1>");
out.println("<a href='index.html'>Index</a>");
//out.println("<a href='clientdetailupdate.jsp'>Update Your Profile</a>");
out.println("<br><a style='color:red;font-size:20px;' href='#'>YourProfile/Accountis Deleted  -:(///////////////////////)</a>");

	}
    
else

{
	
	out.println("<br>Sorry User not found login again after than you can delete <br><a href='clientsingin.html'>SingIN</a>");
}
	}

catch(Exception e){}

%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="footer">
      KishorAgnihotri &copy; KnowledgeBCSS |       | <a href="logout.jsp">Log-Out :)</a> | 
       <a href="index.html">Home Page :-)</a>|<a href="aboutus.html">Know US </a>
    </div>

</body>
</html>