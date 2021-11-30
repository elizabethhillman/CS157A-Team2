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
          <input type = "submit" value = "Login" />
        
         <h2></h2>
         <a href="register.jsp">Create an Account</a>
      </form>
      
      <%
      
      
      
      
      
      
      
      
		String db = "helpingpaw", 
				username = "root", 
		password = "team2", 
		table = "users";  
				
		try {
			java.sql.Connection con;
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, username, password);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from " + db + "." + table);
			boolean userFound = false;
			
			rs.next();
			while(!rs.isAfterLast()){
				  if (rs.getString("name").equals(request.getParameter("username")))
				  {
					  if (rs.getString("password").equals(request.getParameter("password")))
					  {
					  userFound = true;
					  session.setAttribute("currentUser", request.getParameter("username"));
					  Statement stmt2 = con.createStatement();
					  ResultSet currUser = stmt2.executeQuery("select permission from helpingpaw.users where name = \'" + request.getParameter("username")+"\'");
					  currUser.next();
					  session.setAttribute("permissionLevel", currUser.getString(1) );
					 response.sendRedirect("Animals.jsp");
					  }
				  }
			  rs.next();
			}
			if (userFound == false && request.getParameter("username") != null)
			{
				out.println("Username/Password incorrect. Please try again.");
			}
		} catch (SQLException e) {
			out.println("SQLException caught: " + e.getMessage());
		}
		%>
		
		
      
</body>
</html>
