<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% 
    // Invalidate the user's session
    session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Logout</title>
</head>
<body>
    <h1>You have been logged out</h1>
    <p><a href="login.jsp">Login again</a></p>
</body>
</html>
