<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>JDBC Connection example</title>
</head>
<body>
    <h1>JDBC Connection example</h1>
    <%
    String db = "helpingpaw",              //Database for the helping paw application
        username = "root",                //By default, this should be root
        password = "team2",              //common password for the team
        table = "adoptableanimals";      //first table: adoptable animals
        
    try {
        java.sql.Connection con;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db, username, password);
        out.println(db + " database successfully opened.");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from "+ db + "." + table);
        
        //This code can be changed to be a nice header instead of just hello
        out.println("Welcome to Helping Paw");
        
        //This code displays the information retreived from your table
        while (rs.next())
            out.println("<br>" + rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3));
        con.close();
        
    } catch (SQLException e) {
        out.println("SQLException caught: " + e.getMessage());
    }
    %>
</body>
</html>
