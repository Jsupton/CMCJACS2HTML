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
<title>CMC Admin Menu</title>
</head>
<h1>CMC</h1>
<h2>Admin Menu</h2>

<%AdminUI a = (AdminUI) session.getAttribute("currentAdmin"); 
Admin admin = a.getCurrentAdmin();%> 

<body>

<div id="header"><b>CMC -- Choose My College</b></div>
<div id="footer">Copyright ©2017 JACS. Powered by Upton, Schmidgall, Dehn, and Zins </div>

<p> Welcome <%=admin.getUsername() %></p>
<p style="text-align:center;">
<a href="ManageUniversities.jsp">Manage All Universities</a><br>
<a href="ManageAccounts.jsp">Manage All Accounts</a><br>
<br>
<br>
<a href="Logout_action.jsp">Logout</a></p><br>
</body>
</html>