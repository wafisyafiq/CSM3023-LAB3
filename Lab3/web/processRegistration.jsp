<%-- 
    Document   : processRegistration
    Created on : 14 Apr 2026, 4:00:41 pm
    Author     : wafi
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head><title>Registration Success</title></head>
<body>
    <%@ include file="header.jsp" %>
    
    <h2>Registration Submitted Successfully!</h2>
    <p><strong>Name:</strong> <%= request.getParameter("studentName") %></p>
    <p><strong>Matric No:</strong> <%= request.getParameter("matricNum") %></p>
    <p><strong>Club:</strong> <%= request.getParameter("clubName") %></p>
    
    <a href="registerClub.jsp">Back to Form</a>

    <%@ include file="footer.jsp" %>
</body>
</html>
