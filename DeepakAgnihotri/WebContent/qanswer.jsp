<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>

<html>

<head>
  <title>KnowledgeBCSS</title>
  <style> 
input[type=text] {
    width: 100%;
    height:70px;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid red;
    border-radius: 4px;
}
input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    
    float: left;
}
</style>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="indexstyle/style.css" />
</head>

<body>
 <%@page import="java.sql.*" %>
  <div id="main">
    <div id="header">
      <div id="logo">
         <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">Knowledge-Based<br>Community-Sharing-System<span class="logo_colour">
          </span></a></h1>
          <h2>Required Code Find Here :)</h2>
        </div>
        <div id="contact_details">
          <p>Mobile-No: 7678225573</p>
          <p>E-mail: kishoragnihotri</p>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
         <li> <a href="index.html">Home</a></li>
          <li ><a href="query.html">Ask-Query</a></li>
          <li><a href="feedback.html">FeedBack</a></li>
         <li><a href="payment.html">Post-Add</a></li>
          <li class="selected"><a href="qanswer.jsp">AnswerTheQuestion's</a></li>
         <!--   <li><a href="aboutus.html">About Us</a></li>
        Why it is blinging on just open after quetionanswer.jsp after 
        -->
        </ul>
      </div>
    </div>
  <div id="site_content">
      <div class="sidebar">
        <!-- insert your sidebar items here -->
        <h3>Latest Campus</h3>
        <h4>New Session Launched</h4>
        <h5>April 1st, 2018</h5>
        <p>2019 sees the redesign of our website. Take a look around and let us know 
        what you think.<br /><a href="clientsingup.html">Read more</a></p>
        <p></p>
        <h4>New Algorithm Launched</h4>
        <h5>April 1st, 2018</h5>
        <p>2018  Take a look around and let us
         know what you think.<br /><a href="clientsingup.html">Read more</a></p>
        <h3>Useful Links</h3>
        <ul>
          <li><a href="www.durgasoft.com">Learn Java(SE+EE)</a></li>
          <li><a href="www.wikihow.com">learn Any How</a></li>
          <li><a href="www.youtube.com">Learn Video</a></li>
          <li><a href="www.Indeed.com">Upload Resume</a></li>
        </ul>
        <h3>Search</h3>
        <form method="post" action="#" id="search_form">
          <p>
            <input class="search" type="text" name="search_field" value="Enter keywords....." />
            <input name="search" type="image" style="border: 0; margin: 0 0 -9px 5px;" src="indexstyle/search.png" alt="Search" title="Search" />
          </p>
        </form>
        <li><a href ="#">Developer's Best Practices</a></li>
<li><a href="#">Answers The Quetions</a></li>
<li><a href="#">Effective Resume Writing</a></li>
<li><a href="#">HR Interview Questions</a></li>
<li><a href="#">Computer Glossary</a></li>
<li><a href="#">Who is Who</a></li>
      </div>
      <div id="content">
        <!-- insert the page content here -->
        <h1>Welcome to KnowledgeBCSS (Knowledge Based Community Sharing System)</h1>
        <br><br><br><br><br><br><br><br><br><br><br><br>
        <h1 style="color:blue;margin-left:30px;font-size:50px;">Answer The Question</h1>
        <br><br><br>
        
<br>
<%
try
{
	//take userid from session make go ahead :)
	int id=1;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","12345678");
	PreparedStatement ps=con.prepareStatement("select *from query where serial_no=?");
	ps.setInt(1,id);
	ResultSet rs=ps.executeQuery();
	
%><% 
if(rs.next()) 
{
%>
<form action="qanswerdb.jsp"method="post">
<h1>update</h1>
   <p>
      Serial_No:
      <input type="text" name="id" value="<%=rs.getInt(1) %>" readonly>
    </p>
<br><br>
    <p>
     Question:
      <input type="text" name="question" value="<%=rs.getString(2) %>" readonly>
    </p>
<br><br>
 
    <p>
      Answer:
      <input type="text" name="answer"placeholder="write your answer :)" >
    </p>    
      <input type="submit"value="Post-Asn" ></button>
    
    </form>
    

 <% }
}
catch(Exception e){}

%>
       <br><br><br><br><br><br> <p>This template has been tested in the following browsers:</p>
        <h1></h1><ul>
          <li>Internet Explorer 8</li>
          <li>Internet Explorer 7</li>
          <li>FireFox 3.5</li>
          <li>Google Chrome 6</li>
          <li>Safari 4</li>
        </ul>
      </div>
    </div>
    <div id="footer">
      KishorAgnihotri &copy; KnowledgeBCSS | <a href="clientsingup.html">Create Account :)</a>
       | <a href="clientsingin.html">Log-In :)</a> | 
       <a href="employee.html">LoginAs-Employee :-)</a>|<a href="aboutus.html">Know US </a>
    |<a href="contect.html">Contect-US </a>
    </div>
  </div>
</body>
</html>
    