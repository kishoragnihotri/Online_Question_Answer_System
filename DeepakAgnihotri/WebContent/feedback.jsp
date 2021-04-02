<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background:grey;">

<%@page import="java.sql.*" %>
<%
Connection con=null;
try {
	
	
	//String password=request.getParameter("password");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345678");
	out.println(" connection stablished <br><br>");
	String name=request.getParameter("username");
	String id=request.getParameter("userid");
	String sub=request.getParameter("subject");
	//if(id.equals(id1){
	 PreparedStatement pstmt=con.prepareStatement("insert into feedback values(?,?,?)");
	pstmt.setString(1,id);
	pstmt.setString(2,name);
	pstmt.setString(3,sub);
	int k=pstmt.executeUpdate();
	out.println("<h1>Thanks for FeedBack :)");
	
    
//else
//{out.println("<br>Sorry User not found login again<br><a href='clientsingin.html'>SingIN</a>");
//}
	}

catch(Exception e){}

%>
		    <p style="color:Blue">You will be redirected on Home with in couple of seconds</p>
		    <script>
		        var timer = setTimeout(function() {
		            window.location='index.html'
		        }, 5000);
		    </script>
</body>
</html>