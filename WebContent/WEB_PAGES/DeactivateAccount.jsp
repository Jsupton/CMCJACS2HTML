<%@page language="java" import="edu.csbsju.*" %> 
<%@include file="Security.jsp"%>
<%
AdminUI u = (AdminUI) session.getAttribute("currentAdmin");
String uname = request.getParameter("Username");
Account a = u.viewAccount(uname);
char s = a.getStatus();
if(s=='N'){
	response.sendRedirect("ManageAccounts.jsp?Error=3");
}
else{
	u.deactivate(a);
	response.sendRedirect("ManageAccounts.jsp?msg="+a.getUsername());
}
%>