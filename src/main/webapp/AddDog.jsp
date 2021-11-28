<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>Helping Paw - Add Dogs</title>
</head>
<body>
	<h1>Dogs</h1>
	<table border="1">
		<tr>
			<td>Animal ID</td>
			<td>Animal Name</td>
			<td>Age</td>
			<td>Breed</td>
			<td>Sex</td>
			<td>Size</td>
			<td>Allergy Friendly</td>
			<td>Available</td>
			<br />
		</tr>
		<form action = "AddDog.jsp" method = "GET">
		 ID: <input type = "text" name = "id">
         <br />
         Animal Name: <input type = "text" name = "animal_name">
         <br />
         Age: <input type = "text" name = "age" />
         <br/>
         Breed: <input type = "text" name = "breed">
         <br />
         Sex (M/F): <input type = "text" name = "sex">
         <br />
         Size: <input type = "text" name = "size">
         <br />
         Allergy Friendly (1/0): <input type = "text" name = "allergy">
         <br />
         <input type = "submit" value = "Submit" />
      </form>
      
<!--     <h3>  <%= request.getParameter("animal_name")%> the  <%= request.getParameter("age")%> year old  <%= request.getParameter("breed")%> has now been put up for adoption. </h3>
     <ul>
     <li><p><b>ID:</b>
            <%= request.getParameter("id")%>
         </p></li>
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
         <li><p><b>Size:</b>
            <%= request.getParameter("size")%>
         </p></li>
         <li><p><b>Allergy Friendly:</b>
            <%= request.getParameter("allergy")%>
         </p></li>
      </ul> -->

		<%
		String db = "helpingpaw", 
		username = "root", 
		password = "team2", 
		table = "animal";  
				
		try {
			java.sql.Connection con;
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, username, password);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from " + db + "." + table);
			//This code can be changed to be a nice header instead of just hello
			Statement stmt2 = con.createStatement();
			//ResultSet rs2 = //stmt2.executeQuery(	"INSERT INTO " + db + "." + table + " VALUES()");
			if (request.getParameter("animal_name") != null)
			{
			int ri = stmt2.executeUpdate("INSERT INTO " + db + "." + table + " (animalID,animalName,age,breed,sex,available) VALUES(" + request.getParameter("id")+ ",\'" + request.getParameter("animal_name") + "\'," + request.getParameter("age") + ",\'" + request.getParameter("breed") + "\',\'" + request.getParameter("sex") +  "\',1)" );
			int rb = stmt2.executeUpdate("INSERT INTO " + db + ".dog (animalID, hypoallergenic,size) VALUES(" + request.getParameter("id") + "," + request.getParameter("beakSize") + ")");
			out.println( request.getParameter("animal_name") + " the " +  request.getParameter("age") + " year-old "+ request.getParameter("breed") + " has now been put up for adoption.");
			}
		} catch (SQLException e) {
			out.println("SQLException caught: " + e.getMessage());
		}
		%>
	
</body>
</html>
