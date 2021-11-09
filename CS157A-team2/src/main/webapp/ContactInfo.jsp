<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="UTF-8">
<title> Helping Paw - User Contact Information</title>
</head>
<body>
    <h1> User Contact Info</h1>         
    <table border="1">
      <tr>
        <td>Email</td>
        <td>Address</td>
        <td>Phone Number </td>
   </tr>
    <%
    String db = "helpingpaw",        //For hw1, this is your last name
        username = "root",                //By default, this should be root
        password = "team2",        //This PW was defined when you set up MySQL
        table = "contactinformation";        //For hw1, this is hw1
        
    try {
        java.sql.Connection con;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, username, password);
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from "+ db + "." + table);
        
        //This code can be changed to be a nice header instead of just hello
        //out.println("Welcome to Helping Paw! Here are the users' contact info in our database.");
        
        //This code displays the information retreived from your table
        while (rs.next())
            out.println("<br>" + rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3));
        con.close();
        
    } catch (SQLException e) {
        out.println("SQLException caught: " + e.getMessage());
    }
    %>
</body>
</html>