
<%@page language="java" import="edu.csbsju.*,java.util.*"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CMC New User</title>
</head>
<h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">Create New Account</h2>
<br>
<p style="text-align:right;"><a href="AdminMenu.jsp">Return to Main Menu</a><br></p>
<p style="text-align:right;"><a href="index.jsp">Return to Login</a><br></p>
<body>
<% String anyErrors = request.getParameter("Error");
		if(anyErrors!=null && anyErrors.equals("1")){
            %><p style="text-align:center; color:red"><b>NO UNIVERSITY NAME WAS ENTERED ... to create an university a name must be provided</b></p><%
        }
        else if(anyErrors!=null && anyErrors.equals("2")){
        	%><p style="text-align:center;color:red"><b>UNIVERSITY ALREADY EXISTS ... consider editing existing university</b></p><%
        }
%>

<form method="post" action="AddUniversityAction.jsp" name="Create"><br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;"><b>NEW UNIVERSITY INFORMATION</b></a>
</td>


<tr>
<td style="vertical-align: top; text-align: center;"><b>University Name</b>
</td>
<td style="vertical-align: top;"><input name="univName">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>State</b>
</td>
<td style="vertical-align: top;"><input name="state">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Location</b>
</td>
<td style="vertical-align: top;"><input name="location">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Control</b>
</td>
<td style="vertical-align: top;"><input name="control">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Number of Students</b>
</td>
<td style="vertical-align: top;"><input name="numStudents">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Percent Female</b>
</td>
<td style="vertical-align: top;"><input name="percFemale">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>SAT Verbal</b>
</td>
<td style="vertical-align: top;"><input name="satVerbal">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>SAT Math</b>
</td>
<td style="vertical-align: top;"><input name="satMath">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Expenses</b>
</td>
<td style="vertical-align: top;"><input name="satMAth"></td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Percent With Financial Aid</b>
</td>
<td style="vertical-align: top;"><input name="percFinancialAid">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Number Of Applicants</b>
</td>
<td style="vertical-align: top;"><input name="numApplicants">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Percent Admitted</b>
</td>
<td style="vertical-align: top;"><input name="percAdmitted">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Percent Enrolled</b>
</td>
<td style="vertical-align: top;"><input name="percEnrolled">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Academic Scale</b>
</td>
<td style="vertical-align: top;"><input name="academicScale">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Social Scale</b>
</td>
<td style="vertical-align: top;"><input name="socialScale">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Quality of Life</b>
</td>
<td style="vertical-align: top;"><input name="qualityOfLife">
</td>
</tr>

</tbody>
</table>
<input name="CreateUniversity" value="Create University" type="submit">
<input value="Reset" name="Reset" type="reset">
</form>
</body>
</html>