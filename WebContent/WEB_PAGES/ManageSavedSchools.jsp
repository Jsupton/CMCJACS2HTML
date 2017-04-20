<%@page language="java" import="edu.csbsju.*,java.util.*"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;"><b>SAVED SCHOOLS</b></td>

</tr>
<tr>
<td style="vertical-align: top;"><b>Remove</b></td>
<td style="vertical-align: top; text-align: center;"><b>University Name</b>
</td>
<td style="vertical-align: top;"><b>View</b>
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