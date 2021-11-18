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
	<img src ="HelpingPaw.png" alt = "logo">
	<h1> Welcome to Helping Paw!</h1>
	
   <form action = "login.jsp" method = "GET">
         Username: <input type = "text" name = "username">
         <br />
         Password: <input type = "text" name = "password" />
         <br/>
         
         <h2></h2>
         <a href="helpingPaw.jsp">Login</a>
        
         <h2></h2>
         <a href="register.jsp">Create an Account</a>
      </form>
      
</body>
</html>