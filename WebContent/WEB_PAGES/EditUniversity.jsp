<%@page language="java" import="edu.csbsju.*" %>  
<html>
<head>

<title>Edit University</title>
</head>
<body>
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
<form method="post" action="EditUniversity.jsp" name="Edit">
<table align="center" style="text-align: left; width: 80%;" border="1" cellpadding="2"cellspacing="2">
<tbody>
<tr align="center">
<td colspan="2" rowspan="1" style="vertical-align: top;"><b>View Saved University</b>
</td>
</tr><h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">Manage Universities</h2>
<br>
<p style="text-align:right;"><a href="AdminMenu.jsp">Return to Main Menu</a><br></p>
<p style="text-align:right;"><a href="ManageSavedSchools.jsp">Return to Saved Schools</a><br></p>
<p style="text-align:right;"><a href="Logout_action.jsp">Logout</a><br></p>
<br>

<tr>
<td style="vertical-align: top; text-align: center;"><b>University Name</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="univName" value="<%=uni.getUniversityName()%>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>State</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="State" value="<%=<%=uni.getState() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Location</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="Location" value="<%=<%=uni.getLocation() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Control</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="Control" value="<%=<%=uni.getControl() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Number of Students</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="NoStudents" value="<%=<%=uni.getNumberOfStudents() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Percent Female</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="PercentFemale" value="<%=<%=uni.getPercentFemale() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>SAT Verbal</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="SATVerbal" value="<%=<%=uni.getSatVerbal() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>SAT Math</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="SATMath" value="<%=<%=uni.getSatMath() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Expenses</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="Expenses" value="<%=<%=uni.getExpenses() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Percent With Financial Aid</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="PercentFinAid" value="<%=<%=uni.getFinancialAid() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Number Of Applicants</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="NoApplicants" value="<%=<%=uni.getNumberOfApplicants() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Percent Admitted</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="percentAdmitted" value="<%=<%=uni.getPercentAdmitted() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Percent Enrolled</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="percentEnrolled" value="<%=<%=uni.getPercentEnrolled() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Academic Scale</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="academic" value="<%=<%=uni.getAcademicScale() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Social Scale</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="ss" value="<%=<%=uni.getSocialScale() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Quality of Life</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="qual" value="<%=<%=uni.getQualityOfLife() %>">
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Emphases</b>
</td>
<td style="vertical-align: top; text-align: center;"><input name="emp" value="<%=<%=uni.getEmphases() %>">
</td>
</tr>
<tr>
<td colspan="2" rowspan="1" style="vertical-align: top;">
    <input name="Edit" value="Edit" type="submit">
    <input name="University" value="<%=uni.getUniversityName() %>" type="hidden">
</td>
</tr>
</tbody>
</table>
</form>
</body>
</html>