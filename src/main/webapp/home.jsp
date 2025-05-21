<%@ page import="java.sql.Connection" %>

<%@ page import="com.example.servlets.DBConnection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Database Connection Status</title>
</head>
<body>
<%
    try (Connection conn = DBConnection.getConnection()) {
        if (conn != null && !conn.isClosed()) {
            out.println("<h2>✅ Database connected successfully!</h2>");
        } else {
            out.println("<h2>❌ Failed to connect to the database.</h2>");
        }
    } catch (Exception e) {
        out.println("<h2>❌ Failed to connect to the database. Reason: " + e.getMessage() + "</h2>");
    }
%>
</body>
</html>

