<%@page language="java" import="edu.csbsju.*,java.util.*"%>

<html>
<head>
<title>CMC Manage Universities</title>
</head>
<% AdminUI a = (AdminUI) session.getAttribute("currentAdmin");
Admin admin = a.getCurrentAdmin(); 
ArrayList<University> uni = a.getUniversities(); %>
<h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">Manage Universities</h2>
<br>
<p style="text-align:right;"><a href="AdminMenu.jsp">Return to Main Menu</a><br></p>
<p style="text-align:right;"><a href="Logout_action.jsp">Logout</a><br></p>
<br>
<table style="text-align: left; width: 200px;" border="1" cellpadding="2"cellspacing="2">
<tbody>
<tr align="center">

<td colspan="17" rowspan="1" style="vertical-align: top;"><a
href="AddUniversity.jsp">ADD University</a>
</td>

</tr>
<tr>
<td style="vertical-align: top; text-align: center;"><b>University Name</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>State</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>Location</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>Control</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>Number of Students</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>Percent Female</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>SAT Verbal</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>SAT Math</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>Expenses</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>Percent With Financial Aid</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>Number Of Applicants</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>Percent Admitted</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>Percent Enrolled</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>Academic Scale</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>Social Scale</b>
</td>
<td style="vertical-align: top; text-align: center;"><b>Quality of Life</b>
</td>
<td style="vertical-align: top;"><b>Edit</b></td>
</tr>
<%for(University u: uni){%>
<tr>
<td style="vertical-align: top;"><%=u.getUniversityName() %>
</td>
<td style="vertical-align: top;"><%=u.getState()%>
</td>
<td style="vertical-align: top;"><%=u.getLocation()%>
</td>
<td style="vertical-align: top;"><%=u.getControl() %>
</td>
<td style="vertical-align: top;"><%=u.getNumberOfStudents() %>
</td>
<td style="vertical-align: top;"><%=u.getPercentFemale() %>
</td>
<td style="vertical-align: top;"><%=u.getSatVerbal()%>
</td>
<td style="vertical-align: top;"><%=u.getSatMath()%>
</td>
<td style="vertical-align: top;"><%=u.getExpenses() %>
</td>
<td style="vertical-align: top;"><%=u.getFinancialAid() %>
</td>
<td style="vertical-align: top;"><%=u.getNumberOfApplicants() %>
</td>
<td style="vertical-align: top;"><%=u.getPercentAdmitted()%>
</td>
<td style="vertical-align: top;"><%=u.getPercentEnrolled()%>
</td>
<td style="vertical-align: top;"><%=u.getAcademicScale() %>
</td>
<td style="vertical-align: top;"><%=u.getSocialScale() %>
</td>
<td style="vertical-align: top;"><%=u.getQualityOfLife() %>
</td>
<td style="vertical-align: top;">
<form method="post" action="Edit.jsp" name="Edit">
    <input name="Edit" value="Edit" type="submit">
    <input name="Username" value="<%=u.getUniversityName() %>" type="hidden">
</form>
</td>
</tr>
<%} %>
</tbody>
</table>
</body>
</html>

