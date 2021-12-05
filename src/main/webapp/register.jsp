<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<meta charset="UTF-8">
<title>Helping Paw</title>
</head>
<body>
	<main>

<!-- 	Creates form for register and saves the users input to the text fields -->
		<img src ="HelpingPaw.png" alt = "logo">
		<h1> Create an account</h1>
		
	  	 <form action = "register.jsp" method = POST>
	   
	         Username: <input type = "text" name = "username">
	         <br />
	         Password: <input type = "text" name = "password" />
	         <br/>
	         Confirm Password: <input type = "text" name = "confirmedPassword" />
	         <br/>
	         
	         <h2></h2>
	         <a href="login.jsp">Back</a>
	         <h2> </h2>
			 <h2></h2>
			<input type="submit" value="Create Account" />

			<h2></h2>
			
	 </form>
     </main>
	<%
		String db = "helpingpaw", 
		username = "root", 
		password = "team2", 
		table = "users";  
				
		try {
			//create connection
			java.sql.Connection con;
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, username, password);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from " + db + "." + table);
			
			boolean userFound = false;
			rs.next();
			
			//checks to see if user is trying to create an account with an existing username
			while(!rs.isAfterLast()){
			  if (rs.getString("name").equals(request.getParameter("username")))
			  {
				  //if username already exists, change boolean to true
				  userFound = true;
				  
			  }
			  rs.next();
			}
			
			//error message prints to screen if user is trying to create an account with existing username
			if (userFound == true)
			{
				out.println("User already exists.");
			}
			
			// user not found = create user
			else if (request.getParameter("username") != null){ 
				//checks if user inputted the same data for the password and confirm password fields
				if (request.getParameter("password").equals(request.getParameter("confirmedPassword")) == false)
				{
					out.println("Passwords do not match");
				}
				//if credentials are okay, adds the new account to the database
				else {
				Statement stmt2 = con.createStatement();
				int ri = stmt2.executeUpdate("INSERT INTO " + db + "." + table + " (name,permission,password) VALUES(\'" + request.getParameter("username") + "\',\'user\',\'" +request.getParameter("password") +"\')");
		
				//once new account is created, redirect to the login page
			 	 response.sendRedirect("login.jsp"); 
				}
			}
		} catch (SQLException e) {
			out.println("SQLException caught: " + e.getMessage());
		}
		%>
</body>
</html>
