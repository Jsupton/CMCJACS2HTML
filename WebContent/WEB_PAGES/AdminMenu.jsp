<%@page language="java" import="edu.csbsju.*"%> 
<html>
<head>
<title>CMC Admin Menu</title>
</head>
<h1>CMC</h1>
<h2>Admin Menu</h2>
<%AdminUI a = (AdminUI) session.getAttribute("currentAdmin"); 
Admin admin = a.getCurrentAdmin();%> 
<body>
<p> Welcome <%=admin.getFirstName()+" "+admin.getLastName()+":" %></p>
<p style="text-align:center;">
<a href="ManageUniversities.jsp">Manage All Universities</a><br>
<a href="ManageAccounts.jsp">Manage All Accounts</a><br>
<br>
<br>
<a href="Logout_action.jsp">Logout</a></p><br>
</body>
</html>