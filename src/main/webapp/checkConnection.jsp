<%@ page import="java.sql.*, com.example.servlets.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Database Connection Check</title>
</head>
<body>

<%
    try (Connection conn = DBConnection.getConnection()) {
        if (conn != null && !conn.isClosed()) {
            out.println("<h2 style='color:green;'>✅ Database connection successful!</h2>");
        } else {
            out.println("<h2 style='color:red;'>❌ Failed to connect to the database.</h2>");
        }
    } catch (Exception e) {
        out.println("<h2 style='color:red;'>❌ Error: " + e.getMessage() + "</h2>");
        e.printStackTrace();
    }
%>

<a href="index.jsp">Back to Index</a>

</body>
</html>
