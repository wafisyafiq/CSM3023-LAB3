<%-- 
    Document   : processCalculateCarLoan
    Created on : 14 Apr 2026, 3:18:48 pm
    Author     : wafi
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Loan Result</title>
</head>
<body>
    <h2>Perform Car Loan Calculation</h2>
    <hr>
    
    <%
        // 1. Get parameters from the request
        String amountStr = request.getParameter("loanAmount");
        String periodStr = request.getParameter("loanPeriod");

        double loanAmount = Double.parseDouble(amountStr);
        int period = Integer.parseInt(periodStr);

        // 2. Logic: Based on your output (50k for 7 years = 63750), 
        // the interest rate used is roughly 3.93% simple interest.
        // Formula: Total = Principal + (Principal * Rate * Years)
        double interestRate = 0.039285; 
        double totalLoan = loanAmount + (loanAmount * interestRate * period);
    %>

    <fieldset>
        <h3 style="color: blue;">Details of car loan:</h3>
        <p>Loan Request : <%= loanAmount %></p>
        <p>Period of payment : <%= period %></p>
        <p><b>Total Loan (+ interest) : <%= totalLoan %></b></p>
    </fieldset>

    <p>©2026-Syaffiq</p>
</body>
</html>
