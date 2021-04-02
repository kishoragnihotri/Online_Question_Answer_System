<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Query page</title>
</head>
<body>
<%@page import="java.sql.*"%>

<%
Connection con=null;
try {
	
	
	String q=request.getParameter("quetion");
	int i=90;
	if(q==null){response.sendRedirect("query.html");}
	String id=(String)session.getAttribute("id");
	//String s=null;
	if(id==null)
	{ response.sendRedirect("clientsingin.html");
		//out.println("<h1 style='color:green;font-size:100px;'><a href='clientsingin.html'>Sing in firt</a></h1>");
		}
	else{

		Class.forName("oracle.jdbc.driver.OracleDriver");
	 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345678");
	PreparedStatement pstmt=con.prepareStatement("insert into query values(?,?)");
	pstmt.setInt(1,i);
	pstmt.setString(2,q);
	//pstmt.setString()
	
	int k=pstmt.executeUpdate();
	out.println("<center><h1 style='color:Green;font-size:100px;'>Congratulation :) your query has Submitted</h1><center> "+k);
    out.println("<h1><a href='index.html'>HOME page :)</a></h1>");


	}}

catch(Exception e){}

%>

</body>
</html>