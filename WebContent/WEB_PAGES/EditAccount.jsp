<%@page language="java" import="edu.csbsju.*" %>  

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Account</title>
</head>
<body>
<%
AdminUI u = (AdminUI) session.getAttribute("currentAdmin");
String name = request.getParameter("Username");
Account a = u.viewAccount(name);
%>
<h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">Add Account</h2>
<br>
<p style="text-align:right;"><a href="UserMenu.jsp">Return to Main Menu</a><br></p>
<p style="text-align:right;"><a href="Logout_action.jsp">Logout</a><br></p>
<br>
<body>
<form align="center" method="post" action="EditAccount_action.jsp" name="edit">
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
<td style="vertical-align: top;"><input name="FirstName" value ="<%=a.getFirstName() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Last Name</b>
</td>
<td style="vertical-align: top;"><input name="LastName" value ="<%=a.getLastName() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Username</b>
</td>
<td style="vertical-align: top;"><input name="Username" value ="<%=a.getUsername() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Password</b>
</td>
<td style="vertical-align: top;"><input name="Password" value ="<%=a.getPassword() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Type</b>
</td>
<td style="vertical-align: top;"><input name="Type" value ="<%=a.getType() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Status</b>
</td>
<td style="vertical-align: top;"><input name="Status" value ="<%=a.getStatus() %>">
</td>
</tr>
</tbody>
</table>
    <input name="editAccount" value="Edit Account" type="submit">
    <input value="Reset" name="Reset" type="reset">
</form>
</td>
</body>
</html>
