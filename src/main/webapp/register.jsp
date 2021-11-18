<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<style>

	
</style>
<meta charset="UTF-8">
<title>Helping Paw</title>
</head>
<body>
	<main>
		<img src ="HelpingPaw.png" alt = "logo">
		<h1> Create an account</h1>
		
	  	 <form action = "register.jsp" method = POST>
	   
	         Username: <input type = "text" name = "username">
	         <br />
	         Password: <input type = "text" name = "password" />
	         <br/>
	         Confirm Password: <input type = "text" name = "password" />
	         <br/>
	         
	         <h2></h2>
	         <a href="login.jsp">Back</a>
	         <h2> </h2>
			 <a href="helpingPaw.jsp">Submit</a>	 
			
	 </form>
     </main>
</body>
</html>