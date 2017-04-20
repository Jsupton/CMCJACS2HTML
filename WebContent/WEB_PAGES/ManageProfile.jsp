<%@page language="java" import="edu.csbsju.*,java.util.*"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<table align="center" style="text-align: left; width: 80%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;"><b>DETAILED USER INFORMATION</b></a>
</td>

</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>First Name</b>
</td>
<td style="vertical-align: top;"><input name="FirstName" value ="<%=user.getFirstName()%>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Last Name</b>
</td>
<td style="vertical-align: top;"><input name="LastName" value ="<%=user.getLastName()%>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Username</b>
</td>
<td style="vertical-align: top;"><input name="Username" value ="<%=user.getUsername() %>"readonly>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Password</b>
</td>
<td style="vertical-align: top;"><input name="Password" value ="<%=user.getPassword() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Type</b>
</td>
<td style="vertical-align: top;"><input name="Type" value ="<%=user.getType() %>"readonly>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Status</b>
</td>
<td style="vertical-align: top;"><input name="Status" value ="<%=user.getStatus() %>"readonly>
</td>
</tr>
</tbody>
</table>
<form align="center" method="post" action="ManageProfile_action.jsp" name="Edit">
    <input name="Edit" value="Save Changes" type="submit">
    <input name="Username" value="<%=user.getUsername() %>" type="hidden">
    <input value="Reset" name="Reset" type="reset">
</form>
</td>
</body>
</html>
