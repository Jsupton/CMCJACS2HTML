<%@page language="java" import="edu.csbsju.*,java.util.*"%>
<%@include file="Security.jsp"%>

<html>
<head>
<style>
body {
	background-color: #FFF;
	margin:80px 30px 80px 30px
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
<% AdminUI a = (AdminUI) session.getAttribute("currentAdmin");
Admin admin = a.getCurrentAdmin(); 
ArrayList<University> uni = a.getUniversities(); 

   %>
<h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">Manage Universities</h2>
<br>
<p style="text-align:right;"><a href="AdminMenu.jsp">Return to Main Menu</a><br></p>
<p style="text-align:right;"><a href="Logout_action.jsp">Logout</a><br></p>
<br>
<body>
<div id="header"><b>CMC -- Choose My College</b></div>
<div id="footer">Copyright �2017 JACS. Powered by Upton, Schmidgall, Dehn, and Zins </div>
<%
String msg = request.getParameter("msg");
if(msg!=null && msg.equals("0")){
    %><p style="text-align:center; color:red"><b>AN ERROR OCCURRED UNSUCCESSFUL ADDITION</b></p><%
}
else if(msg!=null && msg.equals(".5")){
    %><p style="text-align:center; color:red"><b>AN ERROR OCCURRED UNSUCCESSFUL EMPHASES EDIT</b></p><%
}
else if(msg!=null && msg.equals("1")){
    %><p style="text-align:center; color:green"><b>THE UNIVERSITY WAS ADDED SUCCESSFULLY</b></p><%
}
else if(msg!=null && msg.equals("1.5")){
    %><p style="text-align:center; color:green"><b>THE UNIVERSITY WAS EDITED SUCCESSFULLY</b></p><%
}
else if(msg!=null && msg.equals("2")){
    %><p style="text-align:center; color:red"><b>UNSUCCESSFUL ADDITION... INVALID UNIVERSITY NAME</b></p><%
}
else if(msg!=null && msg.equals("3")){
    %><p style="text-align:center; color:red"><b>UNSUCCESSFUL ADDITION... INVALID QUALITY OF LIFE.... MUST BE 0-5</b></p><%
}
else if(msg!=null && msg.equals("4")){
    %><p style="text-align:center; color:red"><b>UNSUCCESSFUL ADDITION... INVALID SOCIAL SCALE.... MUST BE 0-5</b></p><%
}
else if(msg!=null && msg.equals("5")){
    %><p style="text-align:center; color:red"><b>UNSUCCESSFUL ADDITION... INVALID ACADEMIC SCALE.... MUST BE 0-5</b></p><%
}
else if(msg!=null && msg.equals("6")){
    %><p style="text-align:center; color:red"><b>UNSUCCESSFUL ADDITION... INVALID PERCENT ENROLLED.... MUST BE 0-100</b></p><%
}
else if(msg!=null && msg.equals("7")){
    %><p style="text-align:center; color:red"><b>UNSUCCESSFUL ADDITION... INVALID PERCENT ADMITTED.... MUST BE 0-100</b></p><%
}
else if(msg!=null && msg.equals("9")){
    %><p style="text-align:center; color:red"><b>UNSUCCESSFUL ADDITION... INVALID SAT VERBAL.... MUST BE 0-800</b></p><%
}
else if(msg!=null && msg.equals("8")){
    %><p style="text-align:center; color:red"><b>UNSUCCESSFUL ADDITION... INVALID SAT MATH.... MUST BE 0-800</b></p><%
}
else if(msg!=null && msg.equals("10")){
    %><p style="text-align:center; color:red"><b>UNSUCCESSFUL ADDITION... INVALID PERCENT FEMALE.... MUST BE 0-100</b></p><%
}
else if(msg!=null && msg.equals("11")){
    %><p style="text-align:center; color:red"><b>UNSUCCESSFUL ADDITION... INVALID PERCENT FINANCIAL AID.... MUST BE 0-100</b></p><%
}
else if(msg!=null && msg.equals("12")){
    %><p style="text-align:center; color:red"><b>UNSUCCESSFUL ADDITION... INVALID NUMBER OF STUDENTS.... MUST BE GREATER THAN 0</b></p><%
}
else if(msg!=null && msg.equals("13")){
    %><p style="text-align:center; color:red"><b>UNSUCCESSFUL ADDITION... INVALID EXPENSES.... MUST BE GREATER THAN 0</b></p><%
}
else if(msg!=null && msg.equals("14")){
    %><p style="text-align:center; color:red"><b>UNSUCCESSFUL ADDITION... INVALID NUMBER OF APPLICANTS.... MUST BE GREATER THAN 0</b></p><%
}
else if(msg!=null && msg.equals("15")){
    %><p style="text-align:center; color:red"><b>UNSUCCESSFUL ADDITION... INVALID LOCATION.... MUST BE URBAN, SUBURBAN, OR SMALL-CITY</b></p><%
}
else if(msg!=null && msg.equals("16")){
    %><p style="text-align:center; color:red"><b>UNSUCCESSFUL ADDITION... INVALID NUMBER OF STUDENTS.... PRIVATE, STATE OR CITY</b></p><%
}
%>

<form method="post" action="AdminUniversitySearch.jsp" name="Edit">
	Enter a University Name to search: <input name="UniName">
    <input name="Edit" value="Edit" type="submit">
</form>

<table style="text-align: left; width: 100%;" border="1" cellpadding="2"cellspacing="2">
<tbody>
<tr align="center">

<td colspan="17" rowspan="1" style="vertical-align: top;background-color:#B8FBB8;"><a
href="AddUniversity.jsp"><b>ADD University</b></a>
</td>

</tr>
<tr>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>University Name</b>
</td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>State</b>
</td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Location</b>
</td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Control</b>
</td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Number of Students</b>
</td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Percent Female</b>
</td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>SAT Verbal</b>
</td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>SAT Math</b>
</td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Expenses</b>
</td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Percent With Financial Aid</b>
</td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Number Of Applicants</b>
</td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Percent Admitted</b>
</td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Percent Enrolled</b>
</td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Academic Scale</b>
</td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Social Scale</b>
</td>
<td style="vertical-align: top; text-align: center;background-color:#E3E3E3;"><b>Quality of Life</b>
</td>
<td style="vertical-align: top;background-color:#E3E3E3;"><b>Edit</b></td>
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
<form method="post" action="EditUniversity.jsp" name="Edit">
    <input name="Edit" value="Edit" type="submit">
    <input name="University" value="<%=u.getUniversityName() %>" type="hidden">
</form>
</td>
</tr>
<%} %>
</tbody>
</table>
</body>
</html>

