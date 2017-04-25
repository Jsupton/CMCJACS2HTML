<%@page language="java" import="edu.csbsju.*" %>  

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

<title>CMC Login</title>
</head>
<body>

<div id="header"><b>CMC -- Choose My College</b></div>
<div id="footer">Copyright ©2017 JACS. Powered by Upton, Schmidgall, Dehn, and Zins </div>

<h1 style="text-align:center;"> Choose-My-College </h1>
<h2 style="text-align:center;"> CMC - Login </h2>

<%String anyErrors = request.getParameter("Error");
        if(anyErrors!=null && anyErrors.equals("1")){
            %><p style="text-align:center; color:red"><b>INVALID USERNAME</b></p><%
        }
        else if(anyErrors!=null && anyErrors.equals("2")){
        	%><p style="text-align:center;color:red"><b>INVALID PASSWORD</b></p><%
        }
        else if(anyErrors!=null && anyErrors.equals("3")){
           %><p style="text-align:center;color:red"><b>ERROR</b></p><%
        }
        else if(anyErrors!=null && anyErrors.equals("4")){
            %><p style="text-align:center;color:red"><b>DEACTIVATED ACCOUNT</b></p><%
        }
        else if(anyErrors!=null && anyErrors.equals("5")){
            %><p style="text-align:center;color:red"><b>NOBODY IS LOGGED IN</b></p><%
        }
        else if(anyErrors!=null && anyErrors.equals("6")){
        	%><p style="color:blue; text-align:center"><b>LOGOUT SUCCESSFUL</b></p><%
        }
        else if(anyErrors!=null && anyErrors.equals("7")){
        	%><p style="color:green; text-align:center"><b>ACCOUNT CREATED SUCCESSFULLY</b></p><%
        }
        %>
<br>
<form method="post" action="Login_action.jsp" name="Login"><br>
<table align="center" style="text-align: center; width: 266px; height: 228px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td colspan="2" style="text-align:center; background-color:lightblue;"><b>Login form:</b></td>
</tr>
<tr>
<td style="text-align: center; background-color:#E3E3E3;"><b>Username</b><br>
</td>
<td style="text-align: center; background-color:#E3E3E3;"><input name="Username" required> </td>
</tr>
<tr>
<td style="text-align: center;background-color:#E3E3E3;"><b>Password</b><br>
</td>
<td style="text-align: center; background-color:#E3E3E3;"><input name="Password" type="password" required> </td>
</tr>

<td style="vertical-align: middle; background-color:#E3E3E3;"><input value="Log in"
name="Log in" type="submit"></td>
<td style="vertical-align: middle; background-color:#E3E3E3;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
<p style="text-align: center;"> If you are a new user please click <a href="NewUser.jsp">here</a> to create a new account.</p><br>
<br>

</body>
</html>