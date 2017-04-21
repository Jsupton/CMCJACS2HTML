<%@page language="java" import="edu.csbsju.*" %>  
<%
AdminUI u = (AdminUI) session.getAttribute("currentAdmin");
String fname = request.getParameter("FirstName");
String lname = request.getParameter("LastName");
String username = request.getParameter("Username");
String password = request.getParameter("Password");
String type = request.getParameter("Type");
String status = request.getParameter("Status");
boolean b = u.addUser(fname, lname, username, password, type, status);
if(b)
	response.sendRedirect("ManageAccounts.jsp?msg2="fname+" "+lname);
else
	response.sendRedirect("ManageAccounts.jsp?Error=1");
%>