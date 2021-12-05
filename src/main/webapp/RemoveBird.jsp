<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql"   uri = "http://java.sun.com/jsp/jstl/sql" %>

<html>
<head>
<meta charset="UTF-8">
<title>Helping Paw - Birds</title>
</head>
<body>
	<h1>Adopt Bird</h1>
	
<!-- 	form for user to input data of the bird they want to remove -->
	<h3> Please select the name and ID of the bird you would like to adopt.</h3>
	<table border="1">
		<form action = "RemoveBird.jsp" method = "GET">
         Animal Name: <input type = "text" name = "animal_name">
         <br />
	 ID: <input type = "text" name = "id">
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
<h4>
		<a href="Animals.jsp">Back</a>
	</h4>
      </ul>
      

		<%
		String db = "helpingpaw", 
		username = "root", 
		password = "team2", 
		table = "animal";  
				
		try {
			//connects to database
			java.sql.Connection con;
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, username, password);
			Statement stmt2 = con.createStatement();
			
			//checks to make sure id field is not empty when trying to adopt an animal
			if (request.getParameter("id") != null)
			{
				//joins animal and bird table based on animal id
				ResultSet rs3 = stmt2.executeQuery("select * from "+ db + "." + table + " NATURAL JOIN helpingpaw.bird WHERE animalId = " + request.getParameter("id"));
				
				//prints message that the desired animal has been adopted
				while (rs3.next())
			            out.println("<br> Animal ID: " + rs3.getInt(1) + "<br> " + rs3.getString(2) + " the " + rs3.getInt(3) + "-year old " + rs3.getString(4) + " has been removed from the DB.");
				//removes bird from animal database
				int ri = stmt2.executeUpdate("DELETE FROM " + db + "." + table + " WHERE animalID = \'" + request.getParameter("id") + "\'" );
				//removes bird from bird database
				int rb = stmt2.executeUpdate("DELETE FROM " + db + ".bird WHERE animalID = \'" + request.getParameter("id") + "\'");
			}
		} catch (SQLException e) {
			out.println("SQLException caught: " + e.getMessage());
		}
		%>
		
<!-- 		table showing all birds still available for adoption -->
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/helpingpaw"
         user = "root"  password = "team2"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * FROM  helpingpaw.animal, helpingpaw.bird where animal.animalID = bird.animalID;
      </sql:query>
 
      <table border = "1">
      <tr>
        <td>Animal ID</td>
        <td>Animal Name </td>
        <td>Age </td>
        <td>Breed </td>
        <td>Sex </td>
        <td>Available?</td>
        <td>Break Size</td>
        <br/>
   		</tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.animalID}"/></td>
               <td><c:out value = "${row.animalname}"/></td>
               <td><c:out value = "${row.age}"/></td>
               <td><c:out value = "${row.breed}"/></td>
               <td><c:out value = "${row.sex}"/></td>
               <td><c:out value = "${row.available}"/></td>
               <td><c:out value = "${row.beakSize}"/></td>
            </tr>
         </c:forEach>
      </table>
 	
</body>
</html>
