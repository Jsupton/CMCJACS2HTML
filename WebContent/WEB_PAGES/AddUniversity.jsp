
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CMC New User</title>
</head>
<h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">Create New University</h2>
<br>
<p style="text-align:right;"><a href="AdminMenu.jsp">Return to Main Menu</a><br></p>
<<<<<<< HEAD
<p style="text-align:right;"><a href="index.jsp">Return to Login</a><br></p>
=======
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
<body>
<div id="header"><b>CMC -- Choose My College</b></div>
<div id="footer">Copyright ©2017 JACS. Powered by Upton, Schmidgall, Dehn, and Zins </div>
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

<td colspan="8" rowspan="1" style="vertical-align: top;background-color:#B8FBB8;"><b>NEW UNIVERSITY INFORMATION</b>
</td>


<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>University Name</b>
</td>
<td style="vertical-align: top;"><input name="univName" required>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>State</b>
</td>
<td style="vertical-align: top;"><input name="state">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Location</b> --- <i>(urban, suburban, small-city)</i>
</td>
<td style="vertical-align: top;"><input name="location">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Control</b>  --- <i>(private, state, city)</i>
</td>
<td style="vertical-align: top;"><input name="control">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Number of Students</b>
</td>
<td style="vertical-align: top;"><input name="numStudents" type="number" min="-1">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Percent Female</b> --- <i>(0-100)</i>
</td>
<td style="vertical-align: top;"><input name="percFemale" type="number" min="-1" step="0.01" max="100">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>SAT Verbal</b> --- <i>(0-800)</i>
</td>
<td style="vertical-align: top;"><input name="satVerbal" type="number" min="-1" max="800">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>SAT Math</b> --- <i>(0-800)</i>
</td>
<td style="vertical-align: top;"><input name="satMath" type="number" min="-1" max="800">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Expenses</b>
</td>
<td style="vertical-align: top;"><input name="expenses" type="number" min="-1" step="0.01"></td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Percent With Financial Aid</b> --- <i>(0-100)</i>
</td>
<td style="vertical-align: top;"><input name="percFinancialAid" type="number" min="-1" step="0.01" max="100">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Number Of Applicants</b>
</td>
<td style="vertical-align: top;"><input name="numApplicants" type="number" min="-1">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Percent Admitted</b> --- <i>(0-100)</i>
</td>
<td style="vertical-align: top;"><input name="percAdmitted" type="number" min="-1" step="0.01" max="100">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Percent Enrolled</b> --- <i>(0-100)</i>
</td>
<td style="vertical-align: top;"><input name="percEnrolled" type="number" min="-1" step="0.01" max="100">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Academic Scale</b> --- <i>(0-5)</i>
</td>
<td style="vertical-align: top;"><input name="academicScale" type="number" min="-1" max="5">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Social Scale</b> --- <i>(0-5)</i>
</td>
<td style="vertical-align: top;"><input name="socialScale" type="number" min="-1" max="5">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Quality of Life</b> --- <i>(0-5)</i>
</td>
<td style="vertical-align: top;"><input name="qualityOfLife" type="number" min="-1" max="100">
</td>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3;"><b>Emphases</b><br>
</td>
<td style="vertical-align: top;">Contains Either:<br> 
<input name="Emphases1"><br>
<input name="Emphases2"><br>
<input name="Emphases3"><br>
<input name="Emphases4"><br>
<input name="Emphases5"></td>
</tr>

</tbody>
</table>
<input name="CreateUniversity" value="Create University" type="submit">
<input value="Reset" name="Reset" type="reset">
</form>
</body>
</html>