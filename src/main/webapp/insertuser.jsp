<%@ page import="java.sql.*" %>
<%@ page import="com.example.servlets.DBConnection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register User</title>
</head>
<body>
<h2>Register New User</h2>
<form method="post" action="insertuser.jsp">

    Username: <input type="text" name="user" required><br>
    Password: <input type="password" name="password" required><br>
    <input type="submit" value="Register">
</form>

<%
    String user = request.getParameter("user");
    String password = request.getParameter("password");

    if (user != null && password != null) {
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "INSERT INTO users (user, password) VALUES (?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, user);
            stmt.setString(2, password);

            int rows = stmt.executeUpdate();
            if (rows > 0) {
                out.println("<p>✅ User registered successfully!</p>");
            } else {
                out.println("<p>❌ Registration failed.</p>");
            }
        } catch (Exception e) {
            out.println("<p>❌ Error: " + e.getMessage() + "</p>");
        }
    }
%>
</body>
</html>;
