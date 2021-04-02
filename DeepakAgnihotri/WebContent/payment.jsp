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
<%@page import="java.io.InputStream"%> 
<%@page import="java.io.FileInputStream"%> 
<%@page import="java.io.File"%>

<%
Connection con=null;
try {
	FileInputStream fis;
	String name=request.getParameter("firstname");
	if(name==null){response.sendRedirect("payment.html");}
	String photo=request.getParameter("photo");
	int money=Integer.parseInt(request.getParameter("rs"));
	String sub=request.getParameter("subject");

		Class.forName("oracle.jdbc.driver.OracleDriver");
	 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345678");
	 try
	 {
		 File image= new File(photo); 
	 PreparedStatement pstmt=con.prepareStatement("insert into payment values(?,?,?,?)");
	
		pstmt.setString(1,name); 
	
	fis=new FileInputStream(image); 
	pstmt.setBinaryStream(2, (InputStream) fis, (int) (image.length())); 
	pstmt.setInt(3, money); 
	pstmt.setString(4,sub); 
	int count=pstmt.executeUpdate();
	if(count>0) 
	{ 
	out.println("insert successfully"); 
	} 
	else 
	{ 
	out.println("not successfully"); 
	} 
	
	
	out.println("<center><h1 style='color:Green;font-size:100px;'>Congratulation :) your add has posted</h1><center> "+count);
    out.println("<h1><a href='index.html'>Home page</a></h1>");

	 } 
		catch(Exception ex) 
		{ 
		ex.printStackTrace(); 
		} 
	}

catch(Exception e){}

%>
<div id="footer">
      KishorAgnihotri &copy; KnowledgeBCSS | <a href="clientsingup.html">Create Account :)</a>
       | <a href="clientsingin.html">Log-In :)</a> | 
       <a href="employee.html">LoginAs-Employee :-)</a>|<a href="aboutus.html">Know US </a>
    |<a href="contect.html">Contect-US </a>
    </div>

</body>
</html>