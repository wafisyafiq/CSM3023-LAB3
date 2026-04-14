<%-- 
    Document   : memberDirectory
    Created on : 14 Apr 2026, 4:03:06 pm
    Author     : wafi
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head><title>Member Directory</title></head>
<body>
    <%@ include file="header.jsp" %>
    
    <h2>Committee Member Directory</h2>
    <%
        // Step 7: ArrayList to store names
        ArrayList<String> committee = new ArrayList<String>();
        committee.add("Syaffiq Kyle");
        committee.add("Asyraaf Nabil");
        committee.add("Liew Chin Xuan");
        committee.add("Maya Sabryna");
        committee.add("Sarah Slrup");
    %>

    <table border="1" cellpadding="10" style="width: 50%; border-collapse: collapse;">
        <tr style="background-color: #eee;">
            <th>No.</th>
            <th>Committee Member Name</th>
        </tr>
        <%
            for(int i = 0; i < committee.size(); i++) {
        %>
            <tr>
                <td><%= (i + 1) %></td>
                <td><%= committee.get(i) %></td>
            </tr>
        <%
            }
        %>
    </table>

    <%@ include file="footer.jsp" %>
</body>
</html>
