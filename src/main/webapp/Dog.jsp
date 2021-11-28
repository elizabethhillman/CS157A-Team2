<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql"   uri = "http://java.sun.com/jsp/jstl/sql" %>

<html>
<head>
<meta charset="UTF-8">
<title> Helping Paw-Dogs</title>
</head>
   <body>
   	<h1>Dogs</h1>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/helpingpaw"
         user = "root"  password = "team2"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * FROM  helpingpaw.animal, helpingpaw.dog where animal.animalID = dog.animalID;
      </sql:query>
 
      <table border = "1">
      <tr>
        <td>Animal ID</td>
        <td>Animal Name </td>
        <td>Age </td>
        <td>Breed </td>
        <td>Sex </td>
        <td>Available?</td>

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
            </tr>
         </c:forEach>
      </table>
    
</br>
To find more information about the requested animal please enter the animal id</br>

<form method = "get" action = "QueryAnimal.jsp">
	Animal ID:<input type = "text" name = "AnimalID"><br>
	<input type="submit"  value = "Submit ID" />
</form>

</body>
</html>