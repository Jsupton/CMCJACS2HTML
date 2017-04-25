<%@page language="java" import="edu.csbsju.*,java.util.*"%> 
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

<title>CMC Manage Profile</title>
</head>
<h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">Manage Profile</h2>
<br>
<% UserUI u = (UserUI) session.getAttribute("currentUser"); 
User user = u.getCurrentUser();  %> 
<p style="text-align:right;"><a href="UserMenu.jsp">Return to Main Menu</a><br></p>
<p style="text-align:right;"><a href="Logout_action.jsp">Logout</a><br></p>

<body>
<div id="header"><b>CMC -- Choose My College</b></div>
<div id="footer">Copyright ©2017 JACS. Powered by Upton, Schmidgall, Dehn, and Zins </div>

<form align="center" method="post" action="ManageProfile_action.jsp" name="Edit">
<table align="center" style="text-align: left; width: 80%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;background-color:#B8FBB8;"><b>DETAILED USER INFORMATION</b></a>
</td>

</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>First Name</b>
</td>
<td style="vertical-align: top;"><input name="FirstName" value ="<%=user.getFirstName()%>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Last Name</b>
</td>
<td style="vertical-align: top;"><input name="LastName" value ="<%=user.getLastName()%>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Username</b>
</td>
<td style="vertical-align: top;"><input name="Username" value ="<%=user.getUsername() %>"readonly>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Password</b>
</td>
<td style="vertical-align: top;"><input name="Password" value ="<%=user.getPassword() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Type</b>
</td>
<td style="vertical-align: top;"><input name="Type" value ="<%=user.getType() %>"readonly>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Status</b>
</td>
<td style="vertical-align: top;"><input name="Status" value ="<%=user.getStatus() %>"readonly>
</td>
</tr>
</tbody>
</table>
    <input name="Edit" value="Save Changes" type="submit">
    <input name="Username" value="<%=user.getUsername() %>" type="hidden">
    <input value="Reset" name="Reset" type="reset">
</form>
</td>
</body>
</html>
