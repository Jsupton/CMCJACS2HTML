<%@page language="java" import="edu.csbsju.*,java.util.*"%>



<% 
String univName, univState, univLocation, univControl;
univName = univState = univLocation = univControl = "";

int univNumStudents, univSatVerbal, univSatMath, univNumApplicants, univAcademicScale, univSocialScale, univQualityOfLife;
univNumStudents = univSatVerbal = univSatMath = univNumApplicants = univAcademicScale = univSocialScale = univQualityOfLife = -1;

Double univPercFem, univExpenses, univPercFinancialAid, univPercAdmitted, univPercEnrolled;
univPercFem = univExpenses = univPercFinancialAid = univPercAdmitted = univPercEnrolled = -1.0;




AdminUI u = (AdminUI) session.getAttribute("currentAdmin");



List<String> emphases = new ArrayList<String>();
int nl,nu,svl,svu,sml,smu,nal,nau,asl,asu,ssl,ssu,ql,qu;
nl=nu=svl=svu=sml=smu=nal=nau=asl=asu=ssl=ssu=ql=qu = 0;
double pfl,pfu,el,eu,fal,fau,pal,pau,pel,peu = 0.0;
pfl=pfu=el=eu=fal=fau=pal=pau=pel=peu = 0.0;


if(request.getParameter("univName")!=""){
	univName = request.getParameter("univName").toUpperCase(); }
else{
	response.sendRedirect("ManageUniversities.jsp");
}
if(request.getParameter("state")!=""){
	univState = request.getParameter("state").toUpperCase();}
else{
	univState = "-1";}
if(request.getParameter("location")!=""){
	univLocation = request.getParameter("location").toUpperCase();}
else{
	univLocation ="-1";}
if(request.getParameter("control")!=""){
	univControl = request.getParameter("control").toUpperCase();
	}
else
{
	univControl = "-1";
}
if(request.getParameter("numStudents")!="" && Integer.parseInt(request.getParameter("numStudents"))>0){
	univNumStudents = Integer.parseInt(request.getParameter("numStudents"));}
else
{
	univNumStudents = -1;
}
if(request.getParameter("percFemale")!="" && Double.parseDouble(request.getParameter("percFemale"))>0 && Double.parseDouble(request.getParameter("percFemale"))<=100){
	univPercFem = Double.parseDouble(request.getParameter("percFemale"));}
else if(request.getParameter("percFemale")!=""&& Double.parseDouble(request.getParameter("percFemale"))>100)
{
	response.sendRedirect("ManageUniversities.jsp");
}
else
{
	univPercFem = -1.0;
}
if(request.getParameter("satVerbal")!="" && Integer.parseInt(request.getParameter("satVerbal"))>0 && Integer.parseInt(request.getParameter("satVerbal"))<800){
	univSatVerbal = Integer.parseInt(request.getParameter("satVerbal"));}
else if(request.getParameter("satVerbal")!=""&& Integer.parseInt(request.getParameter("satVerbal"))>=800)
{
	response.sendRedirect("ManageUniversities.jsp");
}
else
{
	univSatVerbal = -1;
}
if(request.getParameter("satMath")!="" && Integer.parseInt(request.getParameter("satMath"))>0 && Integer.parseInt(request.getParameter("satMath"))<800){
	univSatMath = Integer.parseInt(request.getParameter("satMath"));}
else if(request.getParameter("satMath")!=""&& Integer.parseInt(request.getParameter("satMath"))>=800)
{
	response.sendRedirect("ManageUniversities.jsp");
}
else
{
	univSatMath = -1;
}
if(request.getParameter("expenses")!="" && Double.parseDouble(request.getParameter("expenses"))>0){
	univExpenses = Double.parseDouble(request.getParameter("expenses"));}
else
{
	univExpenses = -1.0;
}
if(request.getParameter("percFinancialAid")!="" && Double.parseDouble(request.getParameter("percFinancialAid"))>0){
	univPercFinancialAid = Double.parseDouble(request.getParameter("percFinancialAid"));}
else
{
	univPercFinancialAid = -1.0;
}
if(request.getParameter("numApplicants")!="" && Integer.parseInt(request.getParameter("numApplicants"))>0){
	univNumApplicants = Integer.parseInt(request.getParameter("numApplicants"));}
else
{
	univNumApplicants = -1;
}
if(request.getParameter("percAdmitted")!="" && Double.parseDouble(request.getParameter("percAdmitted"))>0 && Double.parseDouble(request.getParameter("percAdmitted"))<=100){
	univPercAdmitted = Double.parseDouble(request.getParameter("percAdmitted"));}
else if(request.getParameter("percAdmitted")!=""&& Double.parseDouble(request.getParameter("percAdmitted"))>100)
{
	response.sendRedirect("ManageUniversities.jsp");
}
else
{
	univPercAdmitted = -1.0;
}
if(request.getParameter("percEnrolled")!="" && Double.parseDouble(request.getParameter("percEnrolled"))>0 && Double.parseDouble(request.getParameter("percEnrolled"))<=100){
	univPercEnrolled = Double.parseDouble(request.getParameter("percEnrolled"));}
else if(request.getParameter("percEnrolled")!=""&& Double.parseDouble(request.getParameter("percEnrolled"))>100)
{
	response.sendRedirect("ManageUniversities.jsp");
}
else
{
	univPercEnrolled = -1.0;
}
if(request.getParameter("academicScale")!="" && Integer.parseInt(request.getParameter("academicScale"))>0 && Integer.parseInt(request.getParameter("academicScale"))<=5){
	univAcademicScale = Integer.parseInt(request.getParameter("academicScale"));}
else if(request.getParameter("academicScale")!=""&& Integer.parseInt(request.getParameter("academicScale"))>5)
{
	response.sendRedirect("ManageUniversities.jsp");
}
else
{
	univAcademicScale = -1;
}
if(request.getParameter("socialScale")!="" && Integer.parseInt(request.getParameter("socialScale"))>0 && Integer.parseInt(request.getParameter("socialScale"))<=5){
	univSocialScale = Integer.parseInt(request.getParameter("socialScale"));}
else if(request.getParameter("socialScale")!=""&& Integer.parseInt(request.getParameter("socialScale"))>5)
{
	response.sendRedirect("ManageUniversities.jsp");
}
else
{
	univSocialScale = -1;
}
if(request.getParameter("qualityOfLife")!="" && Integer.parseInt(request.getParameter("qualityOfLife"))>0 && Integer.parseInt(request.getParameter("qualityOfLife"))<=5){
	univQualityOfLife = Integer.parseInt(request.getParameter("qualityOfLife"));}
else if(request.getParameter("qualityOfLife")!=""&& Integer.parseInt(request.getParameter("qualityOfLife"))>5)
{
	response.sendRedirect("ManageUniversities.jsp");
}
else
{
	univQualityOfLife = -1;
}




boolean b = u.addUniversity(univName, univState,
		univLocation, univControl, univNumStudents, univPercFem,univSatVerbal,
		univSatMath, univExpenses, univPercFinancialAid, univNumApplicants,
		univPercAdmitted, univPercEnrolled, univAcademicScale, univSocialScale,
		univQualityOfLife);
if(b)
{
	
response.sendRedirect("ManageUniversities.jsp");
}
else
{
	
response.sendRedirect("AddUniversity.jsp?Error=1"); 
}

%>
