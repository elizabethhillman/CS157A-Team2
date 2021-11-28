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
				  userFound = true;
				  
			  }
			  rs.next();
			}
			if (userFound == true)
			{
				out.println("User already exists.");
			}
			else if (request.getParameter("username") != null){ // user not found = create user
				if (request.getParameter("password").equals(request.getParameter("confirmedPassword")) == false)
				{
					out.println("Passwords do not match");
				}
				else {
				Statement stmt2 = con.createStatement();
				int ri = stmt2.executeUpdate("INSERT INTO " + db + "." + table + " (name,permission,password) VALUES(\'" + request.getParameter("username") +"\',\'user\',\'" +request.getParameter("password") +"\')");
		//create user by adding to user database
			 	 response.sendRedirect("login.jsp"); //TODO: CHANGE THIS TO SOMEWHERE ELSE
				}
			}
		} catch (SQLException e) {
			out.println("SQLException caught: " + e.getMessage());
		}
		%>
</body>
</html>
