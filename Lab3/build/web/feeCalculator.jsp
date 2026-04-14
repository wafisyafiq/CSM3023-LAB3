<%-- 
    Document   : feeCalculator
    Created on : 14 Apr 2026, 4:02:39 pm
    Author     : wafi
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head><title>Fee Calculator</title></head>
<body>
    <%@ include file="header.jsp" %>
    
    <h2>Membership Fee Calculator</h2>
    <form method="GET">
        Number of Activities: <input type="number" name="numActivities" min="0">
        <input type="submit" value="Calculate">
    </form>

    <%
        String input = request.getParameter("numActivities");
        if(input != null && !input.isEmpty()) {
            int count = Integer.parseInt(input);
            double totalFee = count * 10.0;
    %>
        <h3>Calculation Result:</h3>
        <p>Total Activities: <%= count %></p>
        <p>Total Fee: <strong>RM <%= String.format("%.2f", totalFee) %></strong></p>
    <%
        }
    %>

    <%@ include file="footer.jsp" %>
</body>
</html>
