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

<title>CMC Saved Schools</title>
</head>
<% UserUI u = (UserUI) session.getAttribute("currentUser"); 
List<String> s = u.getSavedSchools();   %>
<h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">Manage Saved Schools</h2>
<br>
<p style="text-align:right;"><a href="UserMenu.jsp">Return to Main Menu</a><br></p>
<p style="text-align:right;"><a href="Logout_action.jsp">Logout</a><br></p>
<p style="text-align:center;"><a href="CompareSavedSchools.jsp">Compare All Saved Schools</a><br>

<body>
<div id="header"><b>CMC -- Choose My College</b></div>
<div id="footer">Copyright ©2017 JACS. Powered by Upton, Schmidgall, Dehn, and Zins </div>

<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;background-color:#B8FBB8;"><b>SAVED SCHOOLS</b></td>

</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3;"><b>Remove</b></td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>University Name</b>
</td>
<td style="vertical-align: top;background-color:#E3E3E3;"><b>View</b>
</td>
</tr>
<%
for(String uni: s){
	%>
<tr>
<td style="vertical-align: top;">
<form method="post" action="RemoveSchool.jsp" name="RemoveSchool">
    <input name="Remove" value="Remove" type="submit">
    <input name="UniversityName" value="<%=uni %>" type="hidden">
</form>
</td>
<td style="vertical-align: top;"> <%=uni%>
</td>
<td style="vertical-align: top;">
<form method="post" action="ViewSavedSchool.jsp" name="View">
    <input name="View" value="View" type="submit">
    <input name="Name" value="<%=uni %>" type="hidden">
</form>
</td>
</tr>
<%} %>
</tbody>
</table>
</body>
</html>