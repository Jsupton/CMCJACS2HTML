<%@page language="java" import="edu.csbsju.*,java.util.*"%>

<%@include file="Security.jsp"%>

<% 
String univName, univState, univLocation, univControl;
univName = univState = univLocation = univControl = "-1";

int univNumStudents, univSatVerbal, univSatMath, univNumApplicants, univAcademicScale, univSocialScale, univQualityOfLife;
univNumStudents = univSatVerbal = univSatMath = univNumApplicants = univAcademicScale = univSocialScale = univQualityOfLife = -1;

Double univPercFem, univExpenses, univPercFinancialAid, univPercAdmitted, univPercEnrolled;
univPercFem = univExpenses = univPercFinancialAid = univPercAdmitted = univPercEnrolled = -1.0;

AdminUI u = (AdminUI) session.getAttribute("currentAdmin");



List<String> emphases = new ArrayList<String>();


if(request.getParameter("univName")!=""){
univName = request.getParameter("univName").toUpperCase(); }
if(request.getParameter("state")!=""){
	univState = request.getParameter("state").toUpperCase();}

if(request.getParameter("location")!=""){
	univLocation = request.getParameter("location").toUpperCase();}

if(request.getParameter("control")!=""){
	univControl = request.getParameter("control").toUpperCase();
	}

if(request.getParameter("numStudents")!=""){
	univNumStudents = Integer.parseInt(request.getParameter("numStudents"));}

if(request.getParameter("percFemale")!=""){
	univPercFem = Double.parseDouble(request.getParameter("percFemale"));
}
if(request.getParameter("satVerbal")!="" ){
	univSatVerbal = Integer.parseInt(request.getParameter("satVerbal"));}
if(request.getParameter("satMath")!="" ){
	univSatMath = Integer.parseInt(request.getParameter("satMath"));}
if(request.getParameter("expenses")!=""){
	univExpenses = Double.parseDouble(request.getParameter("expenses"));}
if(request.getParameter("percFinancialAid")!=""){
	univPercFinancialAid = Double.parseDouble(request.getParameter("percFinancialAid"));}
if(request.getParameter("numApplicants")!="" ){
	univNumApplicants = Integer.parseInt(request.getParameter("numApplicants"));}
if(request.getParameter("percAdmitted")!="" ){
	univPercAdmitted = Double.parseDouble(request.getParameter("percAdmitted"));}
if(request.getParameter("percEnrolled")!="" ){
	univPercEnrolled = Double.parseDouble(request.getParameter("percEnrolled"));}
if(request.getParameter("academicScale")!="" ){
	univAcademicScale = Integer.parseInt(request.getParameter("academicScale"));}
if(request.getParameter("socialScale")!=""){
	univSocialScale = Integer.parseInt(request.getParameter("socialScale"));}
if(request.getParameter("qualityOfLife")!=""){
	univQualityOfLife = Integer.parseInt(request.getParameter("qualityOfLife"));}



if(request.getParameter("univName")==""){
	response.sendRedirect("ManageUniversities.jsp?msg=2");
}
else if(request.getParameter("qualityOfLife")!=""&& (Integer.parseInt(request.getParameter("qualityOfLife"))>5 || Integer.parseInt(request.getParameter("qualityOfLife"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=3");
}
else if(request.getParameter("socialScale")!=""&& (Integer.parseInt(request.getParameter("socialScale"))>5 || Integer.parseInt(request.getParameter("socialScale"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=4");
}
else if(request.getParameter("academicScale")!=""&& (Integer.parseInt(request.getParameter("academicScale"))>5 || Integer.parseInt(request.getParameter("academicScale"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=5");
}
else if(request.getParameter("percEnrolled")!=""&& (Double.parseDouble(request.getParameter("percEnrolled"))>100 || Double.parseDouble(request.getParameter("percEnrolled"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=6");
}
else if(request.getParameter("percAdmitted")!=""&& (Double.parseDouble(request.getParameter("percAdmitted"))>100 || Double.parseDouble(request.getParameter("percAdmitted"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=7");
}
else if(request.getParameter("satMath")!="" && (Integer.parseInt(request.getParameter("satMath"))>=800 || Integer.parseInt(request.getParameter("satMath"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=8");
}
else if(request.getParameter("satVerbal")!="" && (Integer.parseInt(request.getParameter("satVerbal"))>=800 || Integer.parseInt(request.getParameter("satVerbal"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=9");
}
else if(request.getParameter("percFemale")!="" && (Double.parseDouble(request.getParameter("percFemale"))>100 || Double.parseDouble(request.getParameter("percFemale"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=10");
}
else if(request.getParameter("percFinancialAid")!="" && (Double.parseDouble(request.getParameter("percFinancialAid"))>100 || Double.parseDouble(request.getParameter("percFinancialAid"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=11");
}
else if(request.getParameter("numStudents")!="" && Integer.parseInt(request.getParameter("numStudents"))<-1)
{
	response.sendRedirect("ManageUniversities.jsp?msg=12");
}
else if(request.getParameter("expenses")!="" && (Double.parseDouble(request.getParameter("expenses"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=13");
}
else{
	boolean b = u.addUniversity(univName, univState,
			univLocation, univControl, univNumStudents, univPercFem,univSatVerbal,
			univSatMath, univExpenses, univPercFinancialAid, univNumApplicants,
			univPercAdmitted, univPercEnrolled, univAcademicScale, univSocialScale,
			univQualityOfLife);
	if(b)
	{
		String emp1 = request.getParameter("Emphases1").toUpperCase();
		String emp2 = request.getParameter("Emphases2").toUpperCase();
		String emp3 = request.getParameter("Emphases3").toUpperCase();
		String emp4 = request.getParameter("Emphases4").toUpperCase();
		String emp5 = request.getParameter("Emphases5").toUpperCase();
		if(emp1!=""){
			u.addEmphases(univName, emp1);
		}
		if(emp2!=""){
			u.addEmphases(univName, emp2);
		}
		if(emp3!=""){
			u.addEmphases(univName, emp3);
		}
		if(emp4!=""){
			u.addEmphases(univName, emp4);
		}
		if(emp5!=""){
			u.addEmphases(univName, emp5);
		}
		response.sendRedirect("ManageUniversities.jsp?msg=1"); 
	}
	else
	{
	response.sendRedirect("ManageUniversities.jsp?msg=0"); 
	}
}

%>
