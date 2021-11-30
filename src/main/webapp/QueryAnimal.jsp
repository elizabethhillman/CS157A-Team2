<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.lang.String"%>
<%@ page import="java.util.Arrays"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get the animal information</title>
</head>
<body>
	<img src ="HelpingPaw.png" alt = "logo">
	<h2></h2>
	<%
	
	boolean can_edit;
	
	String n;  
	n = request.getParameter("AnimalID");//Takes in unput from the user
	session.setAttribute("animal_id" , n);
    String db = "helpingpaw",        
    username = "root",               
    password = "team2",       
    table = "Animal";  
	
	try {
	        java.sql.Connection con;
	        Class.forName("com.mysql.jdbc.Driver");
	        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, username, password);
	        
	        //This code can be changed to be a nice header instead of just hello
	       // out.println("Information on the requested Animal");
	        
	        //Columns we are selelcting
   	       	String selection = "breed, animalName, age, sex, username, email, phone";
	       	String[] columns = selection.split(",", 0);	        
	        
	        // Query for animals up for adoption, where available var == true
	        Statement stmt2 = con.createStatement();
	        ResultSet rs2 = stmt2.executeQuery("SELECT " + selection + " FROM helpingpaw.animal natural join helpingpaw.inpost " +
	        								   " natural join helpingpaw.posts natural join helpingpaw.adds natural join helpingpaw.seller " +
	        								   " natural join helpingpaw.contains natural join helpingpaw.contactinformation where animalID ="  + n + ";");
			
	        while (rs2.next()){
	        out.println("</br>Breed: " + rs2.getString(1) );
	        out.println("</br>AnimalName: " + rs2.getString(2) );
	        out.println("</br>Age: " + rs2.getString(3) );
	        out.println("</br>Sex: " + rs2.getString(4) );
	        out.println("</br>Posted by: " + rs2.getString(5) );
	        out.println("</br>Email: " + rs2.getString(6) );
	        out.println("</br>Phone: " + rs2.getString(7) );
	        
	        //creates attributes to be accessed by other jsp files for the animal queried 
	        session.setAttribute("breed", rs2.getString(1));
	        session.setAttribute("name", rs2.getString(2));
	        session.setAttribute("age", rs2.getString(3));
	        session.setAttribute("sex", rs2.getString(4));
	        session.setAttribute("postedBy", rs2.getString(5));
	        session.setAttribute("email", rs2.getString(6));
	        session.setAttribute("phone", rs2.getString(7));
	        	
	        
	    
	  
	        }
	        
	        
	        con.close();
	        

	    } catch (SQLException e) {
	        out.println("SQLException caught: " + e.getMessage());
	    }
	
	
	
	%>
	
	<h4>
		<a href="EditAnimals.jsp">Edit</a>
	</h4> 
	<h4>
		<a href="Animals.jsp">Back</a>
	</h4>

</body>
</html>