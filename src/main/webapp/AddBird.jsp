<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>Helping Paw - Birds</title>
</head>
<body>
	<h1>Birds</h1>
	<table border="1">
		<tr>
			<td>Animal ID</td>
			<td>Animal Name</td>
			<td>Age</td>
			<td>Breed</td>
			<td>Sex</td>
			<td>Beak Size</td>
			<td>Available</td>
			<br />
		</tr>
		<form action = "AddBird.jsp" method = "GET">
         Animal Name: <input type = "text" name = "animal_name">
         <br />
	 ID: <input type = "text" name = "id">
         <br />
         Age: <input type = "text" name = "age" />
         <br/>
         Breed: <input type = "text" name = "breed">
         <br />
         Sex: <input type = "text" name = "sex">
         <br />
         Beak Size: <input type = "text" name = "beakSize">
         <br />
         <input type = "submit" value = "Submit" />
      </form>
      <!--
      <h3>  <%= request.getParameter("animal_name")%> the  <%= request.getParameter("age")%> year old  <%= request.getParameter("breed")%> has now been put up for adoption. </h3>
     <ul>
         <li><p><b>Animal Name</b>
            <%= request.getParameter("animal_name")%>
         </p></li>
         <li><p><b>Age:</b>
            <%= request.getParameter("age")%>
         </p></li>
         <li><p><b>Breed:</b>
            <%= request.getParameter("breed")%>
         </p></li>
         <li><p><b>Sex:</b>
            <%= request.getParameter("sex")%>
         </p></li>
         <li><p><b>Beak Size:</b>
            <%= request.getParameter("beakSize")%>
         </p></li>
-->
      </ul>

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
			int ri = stmt2.executeUpdate("INSERT INTO " + db + "." + table + " (animalID,animalName,age,breed,sex,available) VALUES(" + request.getParameter("id")+ ",\'" + request.getParameter("animal_name") + "\'," + request.getParameter("age") + ",\'" + request.getParameter("breed") + "\',\'" + request.getParameter("sex") +  "\',1)" );
			int rb = stmt2.executeUpdate("INSERT INTO " + db + ".bird (animalID, beakSize) VALUES(" + request.getParameter("id") + "," + request.getParameter("beakSize") + ")");
			out.println( request.getParameter("animal_name") + " the " +  request.getParameter("age") + " year-old "+ request.getParameter("breed") + " has now been put up for adoption.");
			}

		} catch (SQLException e) {
			out.println("SQLException caught: " + e.getMessage());
		}
		%>
	
</body>
</html>
