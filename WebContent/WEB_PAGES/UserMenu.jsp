<%@page language="java" import="edu.csbsju.*"%> 
<html>
<head>
<title>CMC User Menu</title>
</head>
<h1>CMC</h1>
<h2>User Menu</h2>
<%UserUI a = (UserUI) session.getAttribute("currentUser"); 
User user = a.getCurrentUser();%> 
<body>
<p> Welcome <%=user.getFirstName()+" "+user.getLastName()+":" %></p>
<p style="text-align:center;">
<a href="Search.jsp">Search</a><br>
<a href="ManageSavedSchools.jsp">Manage Your Saved Schools</a><br>
<a href="ManageProfile.jsp">Manage Profile Information</a><br>
<br>
<br>
<a href="Logout_action.jsp">Logout</a></p><br>
</body>
</html>