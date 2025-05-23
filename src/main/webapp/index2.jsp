<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users List</title>
</head>
<body>

<h2>Users</h2>

<%
    // JDBC config
    String jdbcURL = "jdbc:mysql://localhost:3306/demos?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    String dbUser = "ashwin";
    String dbPass = "ramesh";



   try {
          // Load MySQL JDBC Driver
          Class.forName("com.mysql.cj.jdbc.Driver");

          // Connect to database
          Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);

          // Create statement
        Statement  stmt = conn.createStatement();

          // Execute query
          String sql = "SELECT id, user, password FROM users";
        ResultSet  rs = stmt.executeQuery(sql);
  %>

  <table border="1">
      <tr><th>ID</th><th>Username</th><th>Password</th></tr>
  <%
      while (rs.next()) { //iterates over each row
  %>
      <tr>
          <td><%= rs.getInt("id") %></td>
          <td><%= rs.getString("user") %></td>
          <td><%= rs.getString("password") %></td>
      </tr>
  <%
      }
  %>
  </table>

  <%
      } catch (Exception e) {
          out.println( e.getMessage());
      }
  %>

  </body>
  </html>
