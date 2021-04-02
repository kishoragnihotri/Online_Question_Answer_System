<%@page import="java.sql.*" %>
<%
try
{	
	
	
	//take userid from session make go ahead :)
	//int id=1;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345678");
	PreparedStatement ps=con.prepareStatement("select *from feedback ");
	//ps.setInt(1,id);
	ResultSet rs=ps.executeQuery();
	
%>
<h1>All FeedBack</h1>
<% 
while(rs.next()) 
{
%>

<p>
     UserID
      <input type="text" name="question" value="<%=rs.getString(1) %>" readonly>
    </p><p>
     UserName
      <input type="text" name="question" value="<%=rs.getString(2) %>" readonly>
    </p>
  

    <p>
     FeedBack
      <%=rs.getString(3) %>
    </p>
<br><br>
 
    
    

 <% }
}
catch(Exception e){}

%>
