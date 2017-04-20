<%@page language="java" import="edu.csbsju.*,java.util.*"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CMC New User</title>
</head>
<h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">Create New Account</h2>
<br>
<p style="text-align:right;"><a href="index.jsp">Return to Login</a><br></p>
<body>
<% String anyErrors = request.getParameter("Error");
		if(anyErrors!=null && anyErrors.equals("1")){
            %><p style="text-align:center; color:red"><b>NO USERNAME WAS ENTERED ... to create an account a username must be provided</b></p><%
        }
        else if(anyErrors!=null && anyErrors.equals("2")){
        	%><p style="text-align:center;color:red"><b>NO PASSWORD WAS ENTERED ... to create an account a password must be provided</b></p><%
        }
        else if(anyErrors!=null && anyErrors.equals("3")){
           %><p style="text-align:center;color:red"><b>NO USERNAME OR PASSWORD WERE ENTERED ... to create an account a username and a password must be provided</b></p><%
        }
        else if(anyErrors!=null && anyErrors.equals("4")){
            %><p style="text-align:center;color:red"><b>AN ERROR OCCURRED WHEN ADDING THE NEW ACCOUNT.... please try again</b></p><%
         }
%>
<form method="post" action="NewUser_Action.jsp" name="Create"><br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;"><b>NEW ACCOUNT INFORMATION</b></a>
</td>

</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>First Name</b>
</td>
<td style="vertical-align: top;"><input name="FirstName">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Last Name</b>
</td>
<td style="vertical-align: top;"><input name="LastName">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Username</b>
</td>
<td style="vertical-align: top;"><input name="Username">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Password</b>
</td>
<td style="vertical-align: top;"><input name="Password">
</td>
</tr>
</tbody>
</table>
<input name="CreateAccount" value="Create Account" type="submit">
<input value="Reset" name="Reset" type="reset">
</form>
</form>
</td>
</body>
</html>
