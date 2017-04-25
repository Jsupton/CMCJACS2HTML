<%@page language="java" import="edu.csbsju.*" %> 
<%@include file="Security.jsp"%>
<html>
<head>
<style type="text/css">
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

<title>CMC Search</title>
</head>

<body>
<div id="header"><b>CMC -- Choose My College</b></div>
<div id="footer">Copyright ©2017 JACS. Powered by Upton, Schmidgall, Dehn, and Zins </div>

<h1>CMC </h1>
<h2>Search For Schools</h2>
<p style="text-align:right;"><a href="UserMenu.jsp">Return to main Menu</a><br></p>
<p style="text-align:right;"><a href="Logout_action.jsp">Logout</a><br></p>

<form method="post" action="SearchResults.jsp" name="searchResults"><br>
<table style="text-align: left; width: 880px; height: 800px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td colspan="2" style="text-align:center; background-color:#B8FBB8;"><b>Search Menu:</b><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>University Name</b><br>
</td>
<td style="vertical-align: top;">Contains<input name="UniversityName"> </td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>State</b><br>
</td>
<td style="vertical-align: top;">Contains <input name="State"> </td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>Location</b><br>
</td>
<td style="vertical-align: top;"><input name="Location">(SUBURBAN, URBAN, SMALL-CITY, or -1 for UNKNOWN) </td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>Control</b><br>
</td>
<td style="vertical-align: top;"><input name="Control">(PRIVATE, STATE, CITY, or -1 for UNKNOWN)</td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>Number Of Students</b><br>
</td>
<td style="vertical-align: top;">between <input name="NumberOfStudentsLOWER" type="number" min="-1"> and <input name="NumberOfStudentsUPPER" type="number" min="-1"> </td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>Percent Female</b><br>
</td>
<td style="vertical-align: top;">between <input name="PercentFemaleLOWER" type="number" min="-1" step="0.01" max="100"> and <input name="PercentFemaleUPPER" type="number" min="-1" step="0.01" max="100"></td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>SAT Verbal</b><br>
</td>
<td style="vertical-align: top;">between <input name="SATVerbalLOWER" type="number" min="-1" max="800"> and <input name="SATVerbalUPPER" type="number" min="-1"  max="800"></td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>SAT Math</b><br>
</td>
<td style="vertical-align: top;">between <input name="SATMathLOWER"type="number" min="-1" max="800"> and <input name="SATMathUPPER" type="number" min="-1" max="800"> </td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>Expenses</b><br>
</td>
<td style="vertical-align: top;">between <input name="ExpensesLOWER" type="number" min="-1" step="0.01"> and <input name="ExpensesUPPER" type="number" min="-1" step="0.01"></td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>Percent With Financial Aid</b><br>
</td>
<td style="vertical-align: top;">between <input name="PercentFinancialAidLOWER" type="number" min="-1" step="0.01" max="100"> and <input name="PercentFinancialAidUPPER" type="number" min="-1" step="0.01" max="100"></td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>Number Of Applicants</b><br>
</td>
<td style="vertical-align: top;">between <input name="NumberOfApplicantsLOWER" type="number" min="-1"> and <input name="NumberOfApplicantsUPPER" type="number" min="-1"> </td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>Percent Admitted</b><br>
</td>
<td style="vertical-align: top;">between <input name="PercentAdmittedLOWER" type="number" min="-1" step="0.01" max="100"> and <input name="PercentAdmittedUPPER" type="number" min="-1" step="0.01" max="100"></td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>Percent Enrolled</b><br>
</td>
<td style="vertical-align: top;">between <input name="PercentEnrolledLOWER" type="number" min="-1" step="0.01" max="100"> and <input name="PercentEnrolledUPPER" type="number" min="-1" step="0.01" max="100"></td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>Academic Scale</b><br>
</td>
<td style="vertical-align: top;">between <input name="AcademicScaleLOWER" type="number" min="-1" max="5"> and <input name="AcademicScaleUPPER" type="number" min="-1" max="5"></td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>Social Scale</b><br>
</td>
<td style="vertical-align: top;">between <input name="SocialScaleLOWER" type="number" min="-1" max="5"> and <input name="SocialScaleUPPER" type="number" min="-1" max="5"></td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>Quality Of Life</b><br>
</td>
<td style="vertical-align: top;">between <input name="QualityOfLifeLOWER" type="number" min="-1" max="5"> and <input name="QualityOfLifeUPPER" type="number" min="-1" max="5"></td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#E3E3E3;"><b>Emphases</b><br>
</td>
<td style="vertical-align: top;">Contains Either:<br> 
<input name="Emphases1"><br>
<input name="Emphases2"><br>
<input name="Emphases3"><br>
<input name="Emphases4"><br>
<input name="Emphases4"></td>
</tr>
<tr>
<td style="vertical-align: top; background-color:#B8FBB8;"><input value="Search"
name="Search" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top; background-color:#B8FBB8;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
</body>
</html>