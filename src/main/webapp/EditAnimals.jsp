<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql"   uri = "http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit the animals information</title>
</head>
<body>
<img src ="HelpingPaw.png" alt = "logo">
<h4> Information on the requested Animal</h4>
<h4> 



<!-- the animals information that wants to be edited -->
<%= session.getAttribute("name")%> the  <%= session.getAttribute("age")%> year old  <%= session.getAttribute("breed")%> 

</h4>

<!-- allows user to edit this information about the animal -->
<form action = EditAnimals.jsp method = "GET">
		 Animal Name: <input type = "text" name = "animal_name">
         <br />
         Age: <input type = "text" name = "animal_age" />
         <br/>
         Breed: <input type = "text" name = "animal_breed">
         <br />
         Sex: <input type = "text" name = "animal_sex">
         <br />
        
         <input type = "submit" value = "Save" />
         
	
</form>
	<h4>
		<a href="Animals.jsp">Back</a>
	</h4>

	<%
    String db = "helpingpaw",        
    username = "root",               
    password = "team2",       
    table = "Animal";  
	
	try {
	        java.sql.Connection con;
	        Class.forName("com.mysql.jdbc.Driver");
	        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, username, password);
	        Statement stmt2 = con.createStatement();
	        
	        
	        String userPermission ="";
	        
	        ResultSet permission = stmt2.executeQuery("SELECT permission FROM helpingpaw.users WHERE name = '"  + session.getAttribute("currentUser") +"';" );
	        
	        while(permission.next())
	        {
	        	userPermission = permission.getString(1);
	        }
	       
	        //checks if user trying to edit is the same user who posted it
	        if (session.getAttribute("postedBy").equals(session.getAttribute("currentUser")) || userPermission.equals("admin"))
			{
	        	//if this is true, updates the db based on new info
			int ri = stmt2.executeUpdate("UPDATE " + db + "." + table + " SET animalName = '" + request.getParameter("animal_name") + "', age = '" + request.getParameter("animal_age") + "', breed = '" + request.getParameter("animal_breed") + "', sex = '" + request.getParameter("animal_sex") +"' WHERE animalID = " + session.getAttribute("animal_id"));
			out.println( request.getParameter("animal_name") + " the " +  request.getParameter("animal_age") + " year-old "+ request.getParameter("animal_breed") + " has now been put up for adoption.");
			}
	        
	        else{
	        	//if not, error message is posted to the screen
	        out.println("You do not have access to edit this information");
	        }
	        
	        con.close();
	        

	    } catch (SQLException e) {
	        out.println("SQLException caught: " + e.getMessage());
	    }
	%> 

</body>
</html>