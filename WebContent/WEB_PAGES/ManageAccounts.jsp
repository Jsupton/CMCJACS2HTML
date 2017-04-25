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
<title>CMC Manage Accounts</title>
</head>
<body>
<div id="header"><b>CMC -- Choose My College</b></div>
<div id="footer">Copyright ©2017 JACS. Powered by Upton, Schmidgall, Dehn, and Zins </div>
<%AdminUI a = (AdminUI) session.getAttribute("currentAdmin");
Admin admin = a.getCurrentAdmin();
%>
<h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">Manage Accounts</h2>
<br>
<p style="text-align:right;"><a href="AdminMenu.jsp">Return to Main Menu</a><br></p>
<p style="text-align:right;"><a href="Logout_action.jsp">Logout</a><br></p>

<% String msg = request.getParameter("msg");
        if(msg!=null){
            %><p style="text-align:center; color:green"><b>THE ACCOUNT <%=msg %> WAS DEACTIVATED SUCCESSFULLY</b></p><%
        }
		String msg2 = request.getParameter("msg2");
        if(msg2!=null){
            %><p style="text-align:center; color:green"><b>ACCOUNT WAS ADDED SUCCESSFULLY</b></p><%
        }
        String msg3 = request.getParameter("msg3");
        if(msg3!=null){
            %><p style="text-align:center; color:green"><b>THE ACCOUNT WAS EDITED SUCCESSFULLY</b></p><%
        }
		String anyErrors = request.getParameter("Error");
        if(anyErrors!=null && anyErrors.equals("1")){
            %><p style="text-align:center; color:red"><b>AN ERROR OCCURRED. INVALID USERNAME</b></p><%
        }
        else if(anyErrors!=null && anyErrors.equals("2")){
            %><p style="text-align:center; color:red"><b>AN ERROR OCCURRED. INVALID TYPE</b></p><%
        }
        else if(anyErrors!=null && anyErrors.equals("3")){
            %><p style="text-align:center; color:red"><b>THE SELECTED ACCOUNT IS ALREADY DEACTIVATED</b></p><%
        }
%>

<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;  background-color:#B8FBB8;"><a
href="AddAccount.jsp"><b>ADD A USER</b></a>
</td>

</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;">
<b>Edit</b></td>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>First Name</b>
</td>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Last Name</b>
</td>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Username</b>
</td>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Password</b>
</td>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Type</b>
</td>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Status</b>
</td>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>Deactivate</b>
</td>
</tr>
<%
ArrayList<Account> users = a.getAccounts();
for(Account u: users){
	%>
<tr>
<td style="vertical-align: top; background-color:#F3F3F3;">
<form method="post" action="EditAccount.jsp" name="Edit">
    <input name="Edit" value="Edit" type="submit">
    <input name="Username" value="<%=u.getUsername() %>" type="hidden">
</form>
</td>
<td style="vertical-align: top;"><%=u.getFirstName()%>
</td>
<td style="vertical-align: top;"><%=u.getLastName()%>
</td>
<td style="vertical-align: top;"><%=u.getUsername() %>
</td>
<td style="vertical-align: top;"><%=u.getPassword() %>
</td>
<td style="vertical-align: top;"><%=u.getType() %>
</td>
<td style="vertical-align: top;"><%=u.getStatus() %>
</td>
<td style="vertical-align: top; background-color:#F3F3F3;">
<form method="post" action="DeactivateAccount.jsp" name="Deactivate">
    <input name="Deactivate" value="Deactivate" type="submit">
    <input name="Username" value="<%=u.getUsername() %>" type="hidden">
</form>
</td>
</tr>
<%} %>
</tbody>
</table>
</body>
</html>

