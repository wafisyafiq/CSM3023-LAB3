<%-- 
    Document   : registerClub
    Created on : 14 Apr 2026, 3:55:12 pm
    Author     : wafi
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head><title>Club Registration</title></head>
<body>
    <%@ include file="header.jsp" %>
    
    <h2>Student Club Registration</h2>
    <form action="processRegistration.jsp" method="POST">
        Name: <input type="text" name="studentName" required><br><br>
        Matric Number: <input type="text" name="matricNum" required><br><br>
        Select Club: 
        <select name="clubName">
            <option value="Computer Science Club">Computer Science Club</option>
            <option value="Robotics Society">Robotics Society</option>
            <option value="Math Enthusiasts">Math Enthusiasts</option>
        </select><br><br>
        <input type="submit" value="Register">
    </form>

    <%@ include file="footer.jsp" %>
</body>
</html>
