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
<title>CMC View Saved University</title>
</head>
<% UserUI u = (UserUI) session.getAttribute("currentUser");
User user = u.getCurrentUser(); 
University uni = u.getAUniversity(request.getParameter("Name"));

%>
<h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">View Saved University</h2>
<br>
<p style="text-align:right;"><a href="UserMenu.jsp">Return to Main Menu</a><br></p>
<p style="text-align:right;"><a href="Logout_action.jsp">Logout</a><br></p>
<br>

<body>
<div id="header"><b>CMC -- Choose My College</b></div>
<div id="footer">Copyright �2017 JACS. Powered by Upton, Schmidgall, Dehn, and Zins </div>

<table align="center" style="text-align: left; width: 80%;" border="1" cellpadding="2"cellspacing="2">
<tbody>
<tr align="center">
<td colspan="2" rowspan="1" style="vertical-align: top;background-color:#B8FBB8;"><b>View Saved University</b>
</td>
</tr>

<form method="post" action="RemoveSchool.jsp" name="remove">
<tr align="center">
<td colspan="2" rowspan="1" style="background-color:#E3E3E3;">
    <input name="Save" value="Remove Saved School" type="submit">
    <input name="UniversityName" value="<%=request.getParameter("Name") %>" type="hidden">
</td>
</tr>
</form>

<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>University Name</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getUniversityName() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>State</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getState() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Location</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getLocation() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Control</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getControl() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Number of Students</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getNumberOfStudents() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Percent Female</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getPercentFemale() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>SAT Verbal</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getSatVerbal() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>SAT Math</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getSatMath() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Expenses</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getExpenses() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Percent With Financial Aid</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getFinancialAid() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Number Of Applicants</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getNumberOfApplicants() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Percent Admitted</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getPercentAdmitted() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Percent Enrolled</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getPercentEnrolled() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Academic Scale</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getAcademicScale() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Social Scale</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getSocialScale() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Quality of Life</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getQualityOfLife() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Emphases</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getEmphases() %>
</td>
</tr>
</tbody>
</table>

</body>
</html>