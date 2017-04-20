<%@page language="java" import="edu.csbsju.*,java.util.*"%>

<html>
<head>
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
<table align="center" style="text-align: left; width: 80%;" border="1" cellpadding="2"cellspacing="2">
<tbody>
<tr align="center">
<td colspan="2" rowspan="1" style="vertical-align: top;"><b>View Saved University</b>
</td>
</tr>

<tr align="center">
<td colspan="2" rowspan="1" style="vertical-align: middle;">
<form method="post" action="SaveSchool.jsp" name="remove">
    <input name="Save" value="Remove Saved School" type="submit">
    <input name="University" value="<%=request.getParameter("Name") %>" type="hidden">
</form>
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
<tr bgcolor="#ddd">
<td style="vertical-align: top; text-align: center;"><b>....</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>....</b>
</td>
</tr>
</tbody>
</table>

</body>
</html>