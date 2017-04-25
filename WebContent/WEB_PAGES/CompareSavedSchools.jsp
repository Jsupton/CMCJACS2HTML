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
<title>CMC Manage Universities</title>
</head>
<% UserUI u = (UserUI) session.getAttribute("currentUser");
User user = u.getCurrentUser(); 
List<String> schools = u.getSavedSchools(); 
ArrayList<University> uni = new ArrayList<University>();
for(String s:schools){
	University university = u.getAUniversity(s);
	uni.add(university);
}
%>
<h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">Manage Universities</h2>
<br>
<p style="text-align:right;"><a href="UserMenu.jsp">Return to Main Menu</a><br></p>
<p style="text-align:right;"><a href="ManageSavedSchools.jsp">Return to Saved Schools</a><br></p>
<p style="text-align:right;"><a href="Logout_action.jsp">Logout</a><br></p>
<br>

<body>
<div id="header"><b>CMC -- Choose My College</b></div>
<div id="footer">Copyright ©2017 JACS. Powered by Upton, Schmidgall, Dehn, and Zins </div>

<table style="text-align: left; width: 100%;" border="1" cellpadding="2"cellspacing="2">
<tbody>
<tr align="center">

<td colspan="17" rowspan="1" style="vertical-align: top;background-color:#B8FBB8;"><b>Compare Saved Universities</b>
</td>

</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>University Name</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getUniversityName() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>State</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getState() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>Location</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getLocation() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>Control</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getControl() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>Number of Students</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getNumberOfStudents() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>Percent Female</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getPercentFemale() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>SAT Verbal</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getSatVerbal() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>SAT Math</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getSatMath() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>Expenses</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getExpenses() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>Percent With Financial Aid</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getFinancialAid() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>Number Of Applicants</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getNumberOfApplicants() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>Percent Admitted</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getPercentAdmitted() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>Percent Enrolled</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getPercentEnrolled() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>Academic Scale</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getAcademicScale() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>Social Scale</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getSocialScale() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>Quality of Life</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getQualityOfLife() %>
</td>
<%} %>
</tr>
<tr>
<td style="vertical-align: top;background-color:#E3E3E3; text-align: center;"><b>Empases</b>
</td>
<%for(University a:uni){ %>
<td style="vertical-align: top; text-align: center;"><%=a.getEmphases() %>
</td>
<%} %>
</tr>
</tbody>
</table>
</body>
</html>

