<%@page language="java" import="edu.csbsju.*,java.util.*"%> 
<html>
<head>
<title>CMC Search Results</title>
</head>
<% UserUI u = (UserUI) session.getAttribute("currentUser");

List<String> emphases = new ArrayList<String>();
int nl,nu,svl,svu,sml,smu,nal,nau,asl,asu,ssl,ssu,ql,qu;
nl=nu=svl=svu=sml=smu=nal=nau=asl=asu=ssl=ssu=ql=qu = 0;
double pfl,pfu,el,eu,fal,fau,pal,pau,pel,peu = 0.0;
pfl=pfu=el=eu=fal=fau=pal=pau=pel=peu = 0.0;

String name = null;
if(request.getParameter("UniversityName")!=""){
	name = request.getParameter("UniversityName").toUpperCase(); }
String state = null;
if(request.getParameter("State")!=""){
	state = request.getParameter("State").toUpperCase();}
String loc = null;
if(request.getParameter("Location")!=""){
	loc = request.getParameter("Location").toUpperCase();}
String con = null;
if(request.getParameter("Control")!=""){
	con = request.getParameter("Control").toUpperCase();}

if(request.getParameter("Emphases1")!=""){emphases.add(request.getParameter("Emphases1").toUpperCase());}
if(request.getParameter("Emphases2")!=""){emphases.add(request.getParameter("Emphases2").toUpperCase());}
if(request.getParameter("Emphases3")!=""){emphases.add(request.getParameter("Emphases3").toUpperCase());}
if(request.getParameter("Emphases4")!=""){emphases.add(request.getParameter("Emphases4").toUpperCase());}

if(request.getParameter("NumberOfStudentsLOWER")!=""){
	nl = Integer.parseInt(request.getParameter("NumberOfStudentsLOWER"));}
if(request.getParameter("NumberOfStudentsUPPER")!=""){
	nu = Integer.parseInt(request.getParameter("NumberOfStudentsUPPER"));}
if(request.getParameter("PercentFemaleLOWER")!=""){ 
	pfl = Double.parseDouble(request.getParameter("PercentFemaleLOWER"));}
if(request.getParameter("PercentFemaleUPPER")!=""){
	pfu = Double.parseDouble(request.getParameter("PercentFemaleUPPER"));}
if(request.getParameter("SATVerbalLOWER")!=""){
	svl = Integer.parseInt(request.getParameter("SATVerbalLOWER"));}
if(request.getParameter("SATVerbalUPPER")!=""){
	svu = Integer.parseInt(request.getParameter("SATVerbalUPPER"));}
if(request.getParameter("SATMathLOWER")!=""){
	sml = Integer.parseInt(request.getParameter("SATMathLOWER"));}
if(request.getParameter("SATMathUPPER")!=""){
	smu = Integer.parseInt(request.getParameter("SATMathUPPER"));}
if(request.getParameter("ExpensesLOWER")!=""){
	el = Double.parseDouble(request.getParameter("ExpensesLOWER"));}
if(request.getParameter("ExpensesUPPER")!=""){
	eu = Double.parseDouble(request.getParameter("ExpensesUPPER"));}
if(request.getParameter("PercentFinancialAidLOWER")!=""){
	fal = Double.parseDouble(request.getParameter("PercentFinancialAidLOWER"));} 
if(request.getParameter("PercentFinancialAidUPPER")!=""){
	fau = Double.parseDouble(request.getParameter("PercentFinancialAidUPPER"));}
if(request.getParameter("NumberOfApplicantsLOWER")!=""){
	nal = Integer.parseInt(request.getParameter("NumberOfApplicantsLOWER"));}
if(request.getParameter("NumberOfApplicantsUPPER")!=""){
	nau = Integer.parseInt(request.getParameter("NumberOfApplicantsUPPER"));}
if(request.getParameter("PercentAdmittedLOWER")!=""){
	pal = Double.parseDouble(request.getParameter("PercentAdmittedLOWER"));}
if(request.getParameter("PercentAdmittedUPPER")!=""){
	pau = Double.parseDouble(request.getParameter("PercentAdmittedUPPER"));}
if(request.getParameter("PercentEnrolledLOWER")!=""){
	pel = Double.parseDouble(request.getParameter("PercentEnrolledLOWER"));}
if(request.getParameter("PercentEnrolledUPPER")!=""){
	peu = Double.parseDouble(request.getParameter("PercentEnrolledUPPER"));}
if(request.getParameter("AcademicScaleLOWER")!=""){
	asl = Integer.parseInt(request.getParameter("AcademicScaleLOWER"));}
if(request.getParameter("AcademicScaleUPPER")!=""){
	asu =Integer.parseInt(request.getParameter("AcademicScaleUPPER"));}
if(request.getParameter("SocialScaleLOWER")!=""){
	ssl = Integer.parseInt(request.getParameter("SocialScaleLOWER"));}
if(request.getParameter("SocialScaleUPPER")!=""){
	ssu = Integer.parseInt(request.getParameter("SocialScaleUPPER"));}
if(request.getParameter("QualityOfLifeLOWER")!=""){
	ql = Integer.parseInt(request.getParameter("QualityOfLifeLOWER"));}
if(request.getParameter("QualityOfLifeUPPER")!=""){
	qu = Integer.parseInt(request.getParameter("QualityOfLifeUPPER"));}
out.println(name+" "+ state+" "+ loc+" "+ con+" "+nl+" "+nu+" "+pfl+" "+pfu+" "+svl+" "+svu+" "+sml+" "+smu+" "+el+" "+eu+" "+fal+" "+fau+" "+nal+" "+nau+" "+
		pal+" "+pau+" "+pel+" "+peu+" "+asl+" "+asu+" "+ssl+" "+ssu+" "+ql+" "+qu+" "+emphases);
List<University> s = u.searchForSchools(name, state, loc, con,nl,nu,pfl,pfu,svl,svu,sml,smu,el,eu,fal,fau,nal,nau,
		pal,pau,pel,peu,asl,asu,ssl,ssu,ql,qu,emphases);
%>

<h1 style ="text-align:left">CMC</h1>
<h2 style ="text-align:left">Search Results</h2>
<br>
<p style="text-align:right;"><a href="UserMenu.jsp">Return to Main Menu</a><br></p>
<p style="text-align:right;"><a href="Logout_action.jsp">Logout</a><br></p>
<body>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="8" rowspan="1" style="vertical-align: top;"><h3>SEARCH RESULTS</h3></td>

</tr>
<tr>
<td style="vertical-align: top;">
<b>SAVE</b></td>
<td style="vertical-align: top; text-align: center;"><b>UNIVERSITY NAME</b>
</td>
<td style="vertical-align: top;"><b>VIEW</b>
</td>
</tr>
<%
for(University uni: s){
	%>
<tr>
<td style="vertical-align: top;">
<form method="post" action="SaveSchool.jsp" name="Save">
    <input name="Save" value="Save" type="submit">
    <input name="Username" value="<%=uni.getUniversityName() %>" type="hidden">
</form>
</td>
<td style="vertical-align: top;"> <%=uni.getUniversityName()%>
</td>
<td style="vertical-align: top;">
<form method="post" action="ViewSearchedSchool.jsp" name="View">
    <input name="View" value="View" type="submit">
    <input name="View" value="<%=uni.getUniversityName() %>" type="hidden">
</form>
</td>
</tr>
<%} %>
</tbody>
</table>
</body>
</html>