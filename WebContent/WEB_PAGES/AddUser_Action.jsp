<%@page language="java" import="edu.csbsju.*" %> 
<%@include file="Security.jsp"%> 
<%
AdminUI u = (AdminUI) session.getAttribute("currentAdmin");

String fname,lname,username,password;
fname=lname=username=password="";

char type;
type = '\0';

fname = request.getParameter("FirstName");
lname = request.getParameter("LastName");
username = request.getParameter("Username");
password = request.getParameter("Password");
String t = request.getParameter("Type");
if(username=="")
	response.sendRedirect("ManageAccounts.jsp?Error=1");
else{
	if(t!=""){
		type = t.charAt(0);}
	else{
		type = 'u';
	}
	if((type!='u'&&type!='a')){
		response.sendRedirect("ManageAccounts.jsp?Error=2");
	}
	else{
		boolean b = u.addAccount(fname, lname, username, password, type, 'Y');
		if(b)
			response.sendRedirect("ManageAccounts.jsp?msg2="+fname+" "+lname);
		else
			response.sendRedirect("ManageAccounts.jsp?Error=1");
	}
}
%>