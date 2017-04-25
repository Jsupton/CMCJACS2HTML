<<<<<<< HEAD
<%@page language="java" import="edu.csbsju.*" %>  
<%
String universityName = request.getParameter("")
%>
=======
<%@page language="java" import="edu.csbsju.*,java.util.*"%>
<%@include file="Security.jsp"%>


<% 
String univName = request.getParameter("univName").toUpperCase(); 
String univState = request.getParameter("univState").toUpperCase();
String univLocation = request.getParameter("univLocation").toUpperCase();
String univControl = request.getParameter("univControl").toUpperCase();

int univNumStudents = Integer.parseInt(request.getParameter("univNumStudents"));
int univSatVerbal = Integer.parseInt(request.getParameter("univSatVerbal"));
int univSatMath = Integer.parseInt(request.getParameter("univSatMath"));
int univNumApplicants = Integer.parseInt(request.getParameter("univNumApplicants"));
int univAcademicScale = Integer.parseInt(request.getParameter("univAcademicScale"));
int univSocialScale = Integer.parseInt(request.getParameter("univSocialScale"));
int univQualityOfLife = Integer.parseInt(request.getParameter("univQualityOfLife"));

double univPercFem = Double.parseDouble(request.getParameter("univPercFemale"));
double univExpenses = Double.parseDouble(request.getParameter("univExpenses"));
double univPercFinancialAid = Double.parseDouble(request.getParameter("univPercFinancialAid"));
double univPercAdmitted = Double.parseDouble(request.getParameter("univPercAdmitted"));
double univPercEnrolled = Double.parseDouble(request.getParameter("univPercEnrolled"));

AdminUI u = (AdminUI) session.getAttribute("currentAdmin");



List<String> emphases = new ArrayList<String>();

if(request.getParameter("univQualityOfLife")!=""&& (Integer.parseInt(request.getParameter("univQualityOfLife"))>5 || Integer.parseInt(request.getParameter("univQualityOfLife"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=3");
}
else if(request.getParameter("univSocialScale")!=""&& (Integer.parseInt(request.getParameter("univSocialScale"))>5 || Integer.parseInt(request.getParameter("univSocialScale"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=4");
}
else if(request.getParameter("univAcademicScale")!=""&& (Integer.parseInt(request.getParameter("univAcademicScale"))>5 || Integer.parseInt(request.getParameter("univAcademicScale"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=5");
}
else if(request.getParameter("univPercEnrolled")!=""&& (Double.parseDouble(request.getParameter("univPercEnrolled"))>100 || Double.parseDouble(request.getParameter("univPercEnrolled"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=6");
}
else if(request.getParameter("univPercAdmitted")!=""&& (Double.parseDouble(request.getParameter("univPercAdmitted"))>100 || Double.parseDouble(request.getParameter("univPercAdmitted"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=7");
}
else if(request.getParameter("univSatMath")!="" && (Integer.parseInt(request.getParameter("univSatMath"))>=800 || Integer.parseInt(request.getParameter("univSatMath"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=8");
}
else if(request.getParameter("univSatVerbal")!="" && (Integer.parseInt(request.getParameter("univSatVerbal"))>=800 || Integer.parseInt(request.getParameter("univSatVerbal"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=9");
}
else if(request.getParameter("univPercFemale")!="" && (Double.parseDouble(request.getParameter("univPercFemale"))>100 || Double.parseDouble(request.getParameter("univPercFemale"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=10");
}
else if(request.getParameter("univPercFinancialAid")!=""&& (Double.parseDouble(request.getParameter("univPercFinancialAid"))>100 || Double.parseDouble(request.getParameter("univPercFinancialAid"))<-1))
{
	response.sendRedirect("ManageUniversities.jsp?msg=11");
}
else if(request.getParameter("univNumStudents")!=""&& Double.parseDouble(request.getParameter("univNumStudents"))<-1)
{
	response.sendRedirect("ManageUniversities.jsp?msg=12");
}
else if(request.getParameter("univNumApplicants")!=""&& Double.parseDouble(request.getParameter("univNumApplicants"))<-1)
{
	response.sendRedirect("ManageUniversities.jsp?msg=14");
}
else if(request.getParameter("univExpenses")!=""&& Double.parseDouble(request.getParameter("univExpenses"))<-1)
{
	response.sendRedirect("ManageUniversities.jsp?msg=13");
}
else if(!univLocation.equals("URBAN")&&!univLocation.equals("SUBURBAN")&&!univLocation.equals("SMALL-CITY")&&!univLocation.equals("-1"))
{
	response.sendRedirect("ManageUniversities.jsp?msg=15");
}
else if(!univControl.equals("PRIVATE")&&!univControl.equals("CITY")&&!univControl.equals("STATE")&&!univControl.equals("-1"))
{
	response.sendRedirect("ManageUniversities.jsp?msg=16");
}

else{
	boolean b = u.editUniversity(univName, univState,
			univLocation, univControl, univNumStudents, univPercFem,univSatVerbal,
			univSatMath, univExpenses, univPercFinancialAid, univNumApplicants,
			univPercAdmitted, univPercEnrolled, univAcademicScale, univSocialScale,
			univQualityOfLife);
	if(b)
	{
		University uni = u.getAUniversity(univName);
		List<String> oldEmp = uni.getEmphases();
		String emp1 = request.getParameter("0");
		String emp2 = request.getParameter("1");
		String emp3 = request.getParameter("2");
		String emp4 = request.getParameter("3");
		String emp5 = request.getParameter("4");
		
		List<String> newEmp = new ArrayList<String>();
		newEmp.add(emp1);
		newEmp.add(emp2);
		newEmp.add(emp3);
		newEmp.add(emp4);
		newEmp.add(emp5);
		int o = 0;
		int l = 0;
		out.print(emp1+" "+emp2+" "+emp3+" "+emp4+" "+emp5);
		for(String z:oldEmp){
			boolean y = u.removeEmphases(univName, z);
			if(!y){
				o++;
				break;
			}
		}
		for(String x:newEmp){
			if(x!=""&&x!=null){
				boolean k = u.addEmphases(univName,x);
				if(!k){
					l++;
					break;
				}
			}
		}
		if(o>0){
			response.sendRedirect("ManageUniversities.jsp?msg=.5");
		}
		else if(l>0){
			response.sendRedirect("ManageUniversities.jsp?msg=.5");
		}
		else{
			response.sendRedirect("ManageUniversities.jsp?msg=1.5");
		}

	}
}

%>
>>>>>>> branch 'master' of https://github.com/Jsupton/CMCJACS2HTML
