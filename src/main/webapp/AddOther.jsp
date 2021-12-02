<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>Helping Paw - Animals</title>
</head>
<body>
	<h1>Other</h1>
	<table border="1">
		<tr>
			<td>Animal ID</td>
			<td>Animal Name</td>
			<td>Age</td>
			<td>Breed</td>
			<td>Sex</td>
			<td>Type</td>
			<td>Available</td>
			<br />
		</tr>
		<form action="AddOther.jsp" method="GET">
			Animal Name: <input type="text" name="animal_name"> <br /> 
			Age: <input type="text" name="age" /> <br /> Breed: <input type="text"
				name="breed"> <br /> Sex: <input type="text" name="sex">
			<br /> Type: <input type="text" name="type"> <br /> 
			<input
				type="submit" value="Submit" />
		</form>

<h4>
		<a href="Animals.jsp">Back</a>
	</h4>
		<%
		String db = "helpingpaw", 
		username = "root", 
		password = "team2", 
		table = "animal";  
				
		try {
			java.sql.Connection con;
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, username, password);
			Statement stmt2 = con.createStatement();
			if (request.getParameter("animal_name") != null)
			{
			ResultSet animalID = stmt2.executeQuery("SELECT max(animalID)+1 FROM helpingpaw.animal");
			animalID.next();
			int id = animalID.getInt(1);	
			
			int ri = stmt2.executeUpdate("INSERT INTO " + db + "." + table + " (animalID,animalName,age,breed,sex,available) VALUES(" + id+ ",\'" + request.getParameter("animal_name") + "\'," + request.getParameter("age") + ",\'" + request.getParameter("breed") + "\',\'" + request.getParameter("sex") +  "\',1)" );
			int rb = stmt2.executeUpdate("INSERT INTO " + db + ".other (animalID, animalType) VALUES(" + id + ",\'" + request.getParameter("type") + "\')");
			out.println( request.getParameter("animal_name") + " the " +  request.getParameter("age") + " year-old "+ request.getParameter("breed") + " has now been put up for adoption.");

			}
			} catch (SQLException e) {
			out.println("SQLException caught: " + e.getMessage());
		}
		%>
	
</body>
</html>
