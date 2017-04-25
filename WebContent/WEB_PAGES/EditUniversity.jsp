<%@page language="java" import="edu.csbsju.*, java.util.*" %>  
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

<title>Edit University</title>
</head>
<body>
<div id="header"><b>CMC -- Choose My College</b></div>
<div id="footer">Copyright ©2017 JACS. Powered by Upton, Schmidgall, Dehn, and Zins </div>
<%
AdminUI u = (AdminUI) session.getAttribute("currentAdmin");
String uname = request.getParameter("University");
University uni = u.getAUniversity(uname);
%>
<h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">Edit University</h2>
<br>
<p style="text-align:right;"><a href="AdminMenu.jsp">Return to Main Menu</a><br></p>
<p style="text-align:right;"><a href="Logout_action.jsp">Logout</a><br></p>
<br>
<form method="post" action="EditUniversity_Action.jsp" name="Edit">
<table align="center" style="text-align: left; width: 80%;" border="1" cellpadding="2"cellspacing="2">
<tbody>
<tr align="center">
<td colspan="2" rowspan="1" style="vertical-align: top;  background-color:#B8FBB8;"><b>Edit University</b>
</td>
<<<<<<< HEAD
</tr><h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">Manage Universities</h2>
<br>
<p style="text-align:right;"><a href="AdminMenu.jsp">Return to Main Menu</a><br></p>
<p style="text-align:right;"><a href="ManageSavedSchools.jsp">Return to Saved Schools</a><br></p>
<p style="text-align:right;"><a href="Logout_action.jsp">Logout</a><br></p>
<br>
=======
</tr>
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML

<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>University Name</b>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="univName" value="<%=uni.getUniversityName()%>">
=======
<td style="vertical-align: top;"><input name="univName" value ="<%=uni.getUniversityName() %>" readonly>
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>State</b>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="State" value="<%=<%=uni.getState() %>">
=======
<td style="vertical-align: top;"><input name="univState" value ="<%=uni.getState() %>">
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Location</b> --- <i>(urban, suburban, small-city)</i>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="Location" value="<%=<%=uni.getLocation() %>">
=======
<td style="vertical-align: top;"><input name="univLocation" value ="<%=uni.getLocation() %>">
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Control</b> --- <i>(private, state, city)</i>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="Control" value="<%=<%=uni.getControl() %>">
=======
<td style="vertical-align: top;"><input name="univControl" value ="<%=uni.getControl() %>">
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Number of Students</b>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="NoStudents" value="<%=<%=uni.getNumberOfStudents() %>">
=======
<td style="vertical-align: top;"><input name="univNumStudents" value ="<%=uni.getNumberOfStudents() %>" type="number" min="-1" >
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Percent Female</b> --- <i>(0-100)</i>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="PercentFemale" value="<%=<%=uni.getPercentFemale() %>">
=======
<td style="vertical-align: top;"><input name="univPercFemale" value ="<%=uni.getPercentFemale() %>" type="number" min="-1" step="0.01" max="100">
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>SAT Verbal</b> --- <i>(0-800)</i>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="SATVerbal" value="<%=<%=uni.getSatVerbal() %>">
=======
<td style="vertical-align: top;"><input name="univSatVerbal" value ="<%=uni.getSatVerbal() %>" type="number" min="-1" max="800">
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>SAT Math</b> --- <i>(0-800)</i>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="SATMath" value="<%=<%=uni.getSatMath() %>">
=======
<td style="vertical-align: top;"><input name="univSatMath" value ="<%=uni.getSatMath() %>" type="number" min="-1" max="800">
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Expenses</b>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="Expenses" value="<%=<%=uni.getExpenses() %>">
=======
<td style="vertical-align: top;"><input name="univExpenses" value ="<%=uni.getExpenses() %>" type="number" min="-1" step="0.01">
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Percent With Financial Aid</b> --- <i>(0-100)</i>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="PercentFinAid" value="<%=<%=uni.getFinancialAid() %>">
=======
<td style="vertical-align: top;"><input name="univPercFinancialAid" value ="<%=uni.getFinancialAid() %>" type="number" min="-1" step="0.01" max="100">
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Number Of Applicants</b>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="NoApplicants" value="<%=<%=uni.getNumberOfApplicants() %>">
=======
<td style="vertical-align: top;"><input name="univNumApplicants" value ="<%=uni.getNumberOfApplicants() %>" type="number" min="-1" >
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Percent Admitted</b> --- <i>(0-100)</i>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="percentAdmitted" value="<%=<%=uni.getPercentAdmitted() %>">
=======
<td style="vertical-align: top;"><input name="univPercAdmitted" value ="<%=uni.getPercentAdmitted() %>" type="number" min="-1" step="0.01" max="100">
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Percent Enrolled</b> --- <i>(0-100)</i>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="percentEnrolled" value="<%=<%=uni.getPercentEnrolled() %>">
=======
<td style="vertical-align: top;"><input name="univPercEnrolled" value ="<%=uni.getPercentEnrolled() %>" type="number" min="-1" step="0.01" max="100">
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Academic Scale</b> --- <i>(0-5)</i>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="academic" value="<%=<%=uni.getAcademicScale() %>">
=======
<td style="vertical-align: top;"><input name="univAcademicScale" value ="<%=uni.getAcademicScale() %>" type="number" min="-1" max="5">
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Social Scale</b> --- <i>(0-5)</i>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="ss" value="<%=<%=uni.getSocialScale() %>">
=======
<td style="vertical-align: top;"><input name="univSocialScale" value ="<%=uni.getSocialScale() %>"  type="number" min="-1" max="5">
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Quality of Life</b> --- <i>(0-5)</i>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="qual" value="<%=<%=uni.getQualityOfLife() %>">
=======
<td style="vertical-align: top;"><input name="univQualityOfLife" value ="<%=uni.getQualityOfLife() %>"  type="number" min="-1" max="5">
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<%List<String> emp = uni.getEmphases(); %>
<tr>
<td colspan="1" rowspan="6" style="vertical-align: top; text-align: center; background-color:#E3E3E3;"><b>Emphases</b>
</td>
<<<<<<< HEAD
<td style="vertical-align: top; text-align: center;"><input name="emp" value="<%=<%=uni.getEmphases() %>">
=======
<%
int i = 0;
for(String s: emp){
%>
<tr>
<td style="vertical-align: top;"><input name=<%=i%> value ="<%=s%>">
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
</td>
</tr>
<%i++;
} 
for(int c = i;c<5;c++) {%>
<tr>
<td style="vertical-align: top;"><input name=<%=c%>>
</td>
</tr>
<%} %>
</tr>
<tr>
<td colspan="2" rowspan="1" style="vertical-align: top; background-color:#B8FBB8;">
    <input name="Edit" value="Edit" type="submit">
    <input name="University" value="<%=uni.getUniversityName() %>" type="hidden">
</td>
</tr>
</tbody>
</table>
</form>
</body>
</html>