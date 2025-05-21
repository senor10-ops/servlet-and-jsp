<%@ page import="java.time.LocalDate" %>
///import the local date class from the java.time package
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Index JSP Page</title>
</head>
<body>

<%!
int length = 20;
String college = "lagrandee";

int square() {
    return length * length;
}
%>


<%
int width = 20;
if (width < 200) {
    out.println("ok..");
} else {
    out.println(" are you sure. ");
}
%>

<p>Length: <%= length %></p>
<p>Date: <%= LocalDate.now() %></p>
<p>Square of length: <%= square() %></p>
<p>College: <%= college %></p>


</body>
</html>
