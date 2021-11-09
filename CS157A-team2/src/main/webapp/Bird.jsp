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
        <td>Beak Size</td>
        <br/>
   </tr>
    <%
    String db = "helpingpaw",        //For hw1, this is your last name
        username = "root",                //By default, this should be root
        password = "team2",        //This PW was defined when you set up MySQL
        table = "bird";        //For hw1, this is hw1
        
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
        ResultSet rs2 = stmt2.executeQuery("select * from " + db + ".animal NATURAL JOIN " + db + "." + table + " GROUP BY bird.animalID");
        while (rs2.next())
            out.println("<br>" + rs2.getInt(1) + " " + rs2.getString(2) + " " + rs2.getInt(3) + " " +  rs2.getString(4) + " " +  rs2.getString(5) + " " +   rs2.getInt(6) + " " +  rs2.getInt(7));
        con.close();

    } catch (SQLException e) {
        out.println("SQLException caught: " + e.getMessage());
    }
    %>
</body>
</html>