<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<style>
	.button{
		text-decoration: none;
 		color: #333333;
 		background-color: #EEEEEE;
 	 	padding: 2px 6px 2px 6px;
 		border-top: 1px solid #CCCCCC;
 		border-right: 1px solid #333333;
 		border-bottom: 1px solid #333333;
  		border-left: 1px solid #CCCCCC;
 		
	}
	
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
	         <a  href="login.jsp">Back</a>
			 <a  href="helpingPaw.jsp">Submit</a>	 
			
	 </form>
     </main>
</body>
</html>