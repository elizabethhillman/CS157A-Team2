<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="UTF-8">
<title> Helping Paw - Animals</title>
</head>
<body>
    <h1> Animals</h1>         
    <table border="1">
      <tr>
        <td>Animal ID</td>
        <td>Animal Name </td>
        <td>Age </td>
        <td>Breed </td>
        <td>Sex </td>
        <td>Available?</td>
        <td>Type</td>
        <br/>
   </tr>
   <form action = "Other.jsp" method = "GET">
         Animal Name: <input type = "text" name = "animal_name">
         <br />
         Age: <input type = "text" name = "age" />
         <br/>
         Breed: <input type = "text" name = "breed">
         <br />
         Sex: <input type = "text" name = "sex">
         <br />
         Type: <input type = "text" name = "type">
         <br />
         <input type = "submit" value = "Submit" />
      </form>
      
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
         <li><p><b>Type:</b>
            <%= request.getParameter("type")%>
         </p></li>
      </ul>
   
    <%
    String db = "helpingpaw",        
        username = "root",                
        password = "team2",        
        table = "other";        
        
    try {
        java.sql.Connection con;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, username, password);
        
        //This code can be changed to be a nice header instead of just hello
        out.println("Welcome to Helping Paw! Here are the animals in our database.");
        
        //This code displays the information retreived from your table
        
        // Query for animals up for adoption, where available var == true
        out.println("<br> <br>" + "Here are the animals available for adoption:");
        Statement stmt2 = con.createStatement();
        ResultSet rs2 = stmt2.executeQuery("select * from " + db + ".animal NATURAL JOIN " + db + "." + table + " GROUP BY other.animalID");
        while (rs2.next())
            out.println("<br>" + rs2.getInt(1) + " " + rs2.getString(2) + " " + rs2.getInt(3) + " " +  rs2.getString(4) + " " +  rs2.getString(5) + " " +   rs2.getInt(6) + " " +  rs2.getInt(7));
        con.close();

    } catch (SQLException e) {
        out.println("SQLException caught: " + e.getMessage());
    }
    %>
</body>
</html>