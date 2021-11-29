<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql"   uri = "http://java.sun.com/jsp/jstl/sql" %>

<html>
<head>
<meta charset="UTF-8">
<title>Helping Paw - Other</title>
</head>
<body>
	<h1>Remove Other Animals</h1>
	<h3> Please select the name and ID of the Other animals you would like to remove.</h3>
	<table border="1">
		<form action = "RemoveOther.jsp" method = "GET">
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
			java.sql.Connection con;
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, username, password);
			Statement stmt2 = con.createStatement();
			if (request.getParameter("id") != null)
			{
				ResultSet rs3 = stmt2.executeQuery("select * from "+ db + "." + table + " NATURAL JOIN helpingpaw.other WHERE animalId = " + request.getParameter("id"));
				 while (rs3.next())
			            out.println("<br> Animal ID: " + rs3.getInt(1) + "<br> " + rs3.getString(2) + " the " + rs3.getInt(3) + "-year old " + rs3.getString(4) + " " + rs3.getString(7) + " has been removed from the DB.");
			int ri = stmt2.executeUpdate("DELETE FROM " + db + "." + table + " WHERE animalID = \'" + request.getParameter("id") + "\'" );
			int rb = stmt2.executeUpdate("DELETE FROM " + db + ".other WHERE animalID = \'" + request.getParameter("id") + "\'");
			}
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from "+ db + "." + table + " NATURAL JOIN helpingpaw.other");
		} catch (SQLException e) {
			out.println("SQLException caught: " + e.getMessage());
		}
		%>
	   	<h1>Others</h1>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/helpingpaw"
         user = "root"  password = "team2"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * FROM  helpingpaw.animal, helpingpaw.other where animal.animalID = other.animalID;
      </sql:query>
 
      <table border = "1">
      <tr>
        <td>Animal ID</td>
        <td>Animal Name </td>
        <td>Age </td>
        <td>Breed </td>
        <td>Sex </td>
        <td>Available</td>
        <td>Animal Type</td>

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
               <td><c:out value = "${row.animalType}"/></td>
            </tr>
         </c:forEach>
      </table>
 
</body>
</html>