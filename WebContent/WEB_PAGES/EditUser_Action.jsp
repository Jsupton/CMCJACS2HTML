<%@page language="java" import="edu.csbsju.*" %>  
<%@include file="Security.jsp"%>
<%
AdminUI u = (AdminUI) session.getAttribute("currentAdmin");
String fname = request.getParameter("FirstName");
String lname = request.getParameter("LastName");
String username = request.getParameter("Username");
String password = request.getParameter("Password");
String t = request.getParameter("Type"); 
char type = '\0';
String s = request.getParameter("Status");
out.print(t+" "+s);
char status = '\0';
if(t!=""){
	type = t.charAt(0);
	out.print(type);}
else{
	type = 'u';
}
if(s!=""){
	status = s.charAt(0);
	out.print(status);}
else{
	status = 'Y';
}
if((status != 'Y' && status !='N') || (type!='u'&&type!='a')){
	response.sendRedirect("ManageAccounts.jsp?Error=2");
}
else{
	u.editAccount(fname, lname, username, password, type, status);
	response.sendRedirect("ManageAccounts.jsp?msg3="+request.getParameter("Username"));
	}
%>