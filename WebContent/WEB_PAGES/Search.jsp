<%@page language="java" import="edu.csbsju.*" %> 
<html>
<head>
<title>CMC Search</title>
</head>
<body>
<h1>CMC </h1>
<h2>Search For Schools</h2>
<p style="text-align:right;"><a href="UserMenu.jsp">Return to main Menu</a><br></p>
<p style="text-align:right;"><a href="Logout_action.jsp">Logout</a><br></p>

Search Menu:

<form method="post" action="SearchResults.jsp" name="searchResults"><br>
<table style="text-align: left; width: 880px; height: 800px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;"><b>University Name</b><br>
</td>
<td style="vertical-align: top;">Contains<input name="UniversityName"> </td>
</tr>
<tr>
<td style="vertical-align: top;"><b>State</b><br>
</td>
<td style="vertical-align: top;">Contains <input name="State"> </td>
</tr>
<tr>
<td style="vertical-align: top;"><b>Location</b><br>
</td>
<td style="vertical-align: top;"><input name="Location">(SUBURBAN, URBAN, SMALL-CITY, or -1 for UNKNOWN) </td>
</tr>
<tr>
<td style="vertical-align: top;"><b>Control</b><br>
</td>
<td style="vertical-align: top;"><input name="Control">(PRIVATE, STATE, CITY, or -1 for UNKNOWN)</td>
</tr>
<tr>
<td style="vertical-align: top;"><b>Number Of Students</b><br>
</td>
<td style="vertical-align: top;">between <input name="NumberOfStudentsLOWER"> and <input name="NumberOfStudentsUPPER"> </td>
</tr>
<tr>
<td style="vertical-align: top;"><b>Percent Female</b><br>
</td>
<td style="vertical-align: top;">between <input name="PercentFemaleLOWER"> and <input name="PercentFemaleUPPER"></td>
</tr>
<tr>
<td style="vertical-align: top;"><b>SAT Verbal</b><br>
</td>
<td style="vertical-align: top;">between <input name="SATVerbalLOWER"> and <input name="SATVerbalUPPER"></td>
</tr>
<tr>
<td style="vertical-align: top;"><b>SAT Math</b><br>
</td>
<td style="vertical-align: top;">between <input name="SATMathLOWER"> and <input name="SATMathUPPER"> </td>
</tr>
<tr>
<td style="vertical-align: top;"><b>Expenses</b><br>
</td>
<td style="vertical-align: top;">between <input name="ExpensesLOWER"> and <input name="ExpensesUPPER"></td>
</tr>
<tr>
<td style="vertical-align: top;"><b>Percent With Financial Aid</b><br>
</td>
<td style="vertical-align: top;">between <input name="PercentFinancialAidLOWER"> and <input name="PercentFinancialAidUPPER"></td>
</tr>
<tr>
<td style="vertical-align: top;"><b>Number Of Applicants</b><br>
</td>
<td style="vertical-align: top;">between <input name="NumberOfApplicantsLOWER"> and <input name="NumberOfApplicantsUPPER"> </td>
</tr>
<tr>
<td style="vertical-align: top;"><b>Percent Admitted</b><br>
</td>
<td style="vertical-align: top;">between <input name="PercentAdmittedLOWER"> and <input name="PercentAdmittedUPPER"></td>
</tr>
<tr>
<td style="vertical-align: top;"><b>Percent Enrolled</b><br>
</td>
<td style="vertical-align: top;">between <input name="PercentEnrolledLOWER"> and <input name="PercentEnrolledUPPER"></td>
</tr>
<tr>
<td style="vertical-align: top;"><b>Academic Scale</b><br>
</td>
<td style="vertical-align: top;">between <input name="AcademicScaleLOWER"> and <input name="AcademicScaleUPPER"></td>
</tr>
<tr>
<td style="vertical-align: top;"><b>Social Scale</b><br>
</td>
<td style="vertical-align: top;">between <input name="SocialScaleLOWER"> and <input name="SocialScaleUPPER"></td>
</tr>
<tr>
<td style="vertical-align: top;"><b>Quality Of Life</b><br>
</td>
<td style="vertical-align: top;">between <input name="QualityOfLifeLOWER"> and <input name="QualityOfLifeUPPER"></td>
</tr>
<tr>
<td style="vertical-align: top;"><b>Emphases</b><br>
</td>
<td style="vertical-align: top;">Contains Either:<br> 
<input name="Emphases1"><br>
<input name="Emphases2"><br>
<input name="Emphases3"><br>
<input name="Emphases4"><br>
<input name="Emphases4"></td>
</tr>
<tr>
<td style="vertical-align: top;"><input value="Search"
name="Search" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
</body>
</html>