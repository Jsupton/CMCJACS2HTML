<%@page language="java" import="edu.csbsju.*" %>  
<%
AdminUI u = (AdminUI) session.getAttribute("currentAdmin");
String fname = request.getParameter("FirstName");
String lname = request.getParameter("LastName");
String username = request.getParameter("Username");
String password = request.getParameter("Password");
String t = request.getParameter("Type");
char type = t.charAt(0);
String s = request.getParameter("Status");
char status = s.charAt(0);
if(type!='u'||type!='a'){
	response.sendRedirect("ManageAccounts.jsp?Error=2");
}
if(status!='Y'||status!='N'){
	response.sendRedirect("ManageAccounts.jsp?Error=3");
}
u.editUser(fname, lname, username, password, type, status);
response.sendRedirect("ManageAccounts.jsp?msg3="username);
%>