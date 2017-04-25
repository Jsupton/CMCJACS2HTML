<%@page language="java" import="edu.csbsju.*" %>  
<%@include file="Security.jsp"%>
<html>
<head>
<style>
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

<title>Add Account</title>
</head>
<body>
<div id="header"><b>CMC -- Choose My College</b></div>
<div id="footer">Copyright ©2017 JACS. Powered by Upton, Schmidgall, Dehn, and Zins </div>
<%
AdminUI u = (AdminUI) session.getAttribute("currentAdmin");
%>
<% String anyErrors = request.getParameter("Error");
        if(anyErrors!=null && anyErrors.equals("1")){
            %><p style="text-align:center; color:red"><b>NO TYPE WAS ENTERED</b></p><%
        }
        %>
<h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">Add Account</h2>
<br>
<p style="text-align:right;"><a href="AdminMenu.jsp">Return to Main Menu</a><br></p>
<p style="text-align:right;"><a href="ManageAccounts.jsp">Return to Manage Accounts</a><br></p>
<p style="text-align:right;"><a href="Logout_action.jsp">Logout</a><br></p>
<br>
<body>
<form align="center" method="post" action="AddUser_Action.jsp" name="Add">
<table align="center" style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;  background-color:#B8FBB8;"><b>DETAILED USER INFORMATION</b></a>
</td>

</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>First Name</b>
</td>
<td style="vertical-align: top;"><input name="FirstName">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Last Name</b>
</td>
<td style="vertical-align: top;"><input name="LastName">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Username</b>
</td>
<td style="vertical-align: top;"><input name="Username" required>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Password</b>
</td>
<td style="vertical-align: top;"><input name="Password">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Type</b>
</td>
<td style="vertical-align: top;"><input name="Type">
</td>
</tr>
</tbody>
</table>
<input name="AddAccount" value="Add Account" type="submit">
<input value="Reset" name="Reset" type="reset">
</form>
</td>
</body>
</html>
