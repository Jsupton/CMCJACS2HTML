<%@page language="java" import="edu.csbsju.*" %>  
<html>
<head>

<title>Edit University</title>
</head>
<body>
<%
UserUI u = (UserUI) session.getAttribute("currentUser");
String uname = request.getParameter("University");
University uni = u.getAUniversity(uname);
%>
<form method="post" action="EditUniversity.jsp" name="Edit">
<table align="center" style="text-align: left; width: 80%;" border="1" cellpadding="2"cellspacing="2">
<tbody>
<tr align="center">
<td colspan="2" rowspan="1" style="vertical-align: top;"><b>View Saved University</b>
</td>
</tr>

<tr>
<td style="vertical-align: top; text-align: center;"><b>University Name</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getUniversityName() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>State</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getState() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Location</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getLocation() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Control</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getControl() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Number of Students</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getNumberOfStudents() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Percent Female</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getPercentFemale() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>SAT Verbal</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getSatVerbal() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>SAT Math</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getSatMath() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Expenses</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getExpenses() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Percent With Financial Aid</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getFinancialAid() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Number Of Applicants</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getNumberOfApplicants() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Percent Admitted</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getPercentAdmitted() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Percent Enrolled</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getPercentEnrolled() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Academic Scale</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getAcademicScale() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Social Scale</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getSocialScale() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Quality of Life</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getQualityOfLife() %>
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>Emphases</b>
</td>
<td style="vertical-align: top; text-align: center;"><%=uni.getEmphases() %>
</td>
</tr>
<tr>
<td style="vertical-align: top;">
    <input name="Edit" value="Edit" type="submit">
    <input name="University" value="<%=u.getUniversityName() %>" type="hidden">
</td>
</tr>
</tbody>
</table>
</form>
</body>
</html>