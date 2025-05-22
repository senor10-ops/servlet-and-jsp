<%@ page import="java.sql.*" %>
<%@ page import="com.example.servlets.DBConnection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update User Password</title>
</head>
<body>
<h2>Update User Password</h2>
<form method="post" action="update.jsp">

    Username: <input type="text" name="user" required><br>
    New Password: <input type="password" name="password" required><br>
    <input type="submit" value="Update Password">
</form>

<%
    String user = request.getParameter("user");
    String password = request.getParameter("password");

    if (user != null && password != null) {
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "UPDATE users SET password = ? WHERE user = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, password);
            stmt.setString(2, user);

            int rows = stmt.executeUpdate();
            if (rows > 0) {
                out.println("<p>✅ Password updated successfully!</p>");
            } else {
                out.println("<p>❌ Update failed. User not found.</p>");
            }
        } catch (Exception e) {
            out.println("<p>❌ Error: " + e.getMessage() + "</p>");
        }
    }
%>
</body>
</html>
