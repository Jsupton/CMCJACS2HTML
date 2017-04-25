<%@page language="java" import="edu.csbsju.*"%> 
<%@include file="Security.jsp"%>
<html>
<head>
<style type="text/css">
body {
	background-color: #FFF;
	margin:80px 80px 100px 100px;
}
div#header {
	position:fixed;
	top:0px;
	left:0px;
	width:100%;
	color:#FFF;
	background:#333;
	padding:20px;
}
div#footer {
	position:fixed;
	bottom:0px;
	left:0px;
	width:100%;
	color:#FFF;
	background:#333;
	padding:8px;
}
</style>

<title>CMC User Menu</title>
</head>
<h1>CMC</h1>
<h2>User Menu</h2>
<%UserUI a = (UserUI) session.getAttribute("currentUser"); 
User user = a.getCurrentUser();%> 

<body>
<div id="header"><b>CMC -- Choose My College</b></div>
<div id="footer">Copyright ©2017 JACS. Powered by Upton, Schmidgall, Dehn, and Zins </div>

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