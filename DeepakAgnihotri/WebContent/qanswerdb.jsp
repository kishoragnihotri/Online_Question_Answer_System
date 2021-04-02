<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Answer Db</title>

<link rel="stylesheet" type="text/css" href="indexstyle/style.css" />
</head>
<body>
<%@page import="java.sql.*"%>
<br>
<%
Connection con=null;
try {
	int id=Integer.parseInt(request.getParameter("id"));
	String q=request.getParameter("question");
	String ans=request.getParameter("answer");
	if(ans==null){response.sendRedirect("qanswer.jsp");}
Class.forName("oracle.jdbc.driver.OracleDriver");
	 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345678");
	PreparedStatement pstmt=con.prepareStatement("insert into answer values(?,?,?)");
	pstmt.setInt(1,id);
	pstmt.setString(2,q);
	pstmt.setString(3,ans);
	int k=pstmt.executeUpdate();
	out.println("<center><h1 style='color:Green;font-size:100px;'>Congratulation :) your Answer has Submitted<br>Thanking you :)</h1><center> "+k);  out.println("<br><h1><a href='index.html'>Home page</a></h1>");


	}

catch(Exception e){}

%>
<div id="footer"style="bottom:0px;margin-top:800px;">
      KishorAgnihotri &copy; KnowledgeBCSS | <a href="clientsingup.html">Create Account :)</a>
       | <a href="clientsingin.html">Log-In :)</a> | 
       <a href="employee.html">LoginAs-Employee :-)</a>|<a href="aboutus.html">Know US </a>
    </div>
</body>
</html>