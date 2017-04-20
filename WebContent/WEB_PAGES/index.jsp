<%@page language="java" import="edu.csbsju.*" %>  

<html>
<head>

<title>CMC Login</title>
</head>
<h1 style="text-align:center;"> CMC </h1>
<h2 style="text-align:center;"> Login </h2>
<body>
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
<p style="text-align:center;"> Login form:</p>
<form method="post" action="Login_action.jsp" name="Login"><br>
<table align="center" style="text-align: center; width: 266px; height: 228px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="text-align: center;">Username<br>
</td>
<td style="text-align: center;"><input name="Username"> </td>
</tr>
<tr>
<td style="text-align: center;">Password<br>
</td>
<td style="text-align: center;"><input name="Password" type="password"> </td>
</tr>

<td style="vertical-align: middle;"><input value="Log in"
name="Log in" type="submit"></td>
<td style="vertical-align: middle;"><input value="Reset"
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