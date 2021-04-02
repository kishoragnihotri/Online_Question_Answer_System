<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee :)</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
Connection con=null;
try {
	
	
	//String password=request.getParameter("password");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345678");
	out.println(" connection stablished <br><br>");
	String id=request.getParameter("userid");
	String password1=request.getParameter("password");

	out.println("<h1>userid-: "+id+"</h1><br><h2>password-: "+password1+"</h2>");
	 PreparedStatement pstmt=con.prepareStatement("select  * from employee where empid=? and password=?");
	pstmt.setString(1,id);
	pstmt.setString(2,password1);
	ResultSet rs=pstmt.executeQuery();
	out.println(rs);
	if(rs.next()){
		session.setAttribute("id",id);
		out.println("Welcome:)  "+id);
out.println("<br><a href='adminuser.jsp'>AsAdmin</a>");
out.println("<br><a href='security.jsp'>security</a>");
out.println("<br><a href='adminuser.jsp'>GodFather</a>");
out.println("<br><a href='logout.jsp'>Log Out :)</a>");
	}
    
else
{out.println("<br>Sorry User not found login again<br><a href='employee.html'>SingIN</a>");
}
	}

catch(Exception e){}

%>

</body>
</html>