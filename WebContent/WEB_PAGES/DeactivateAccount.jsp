<%@page language="java" import="edu.csbsju.*" %> 
<%
AdminUI u = (AdminUI) session.getAttribute("currentAdmin");
String uname = request.getParameter("Username");
Account a = u.viewAccount(uname);
u.deactivate(a);
response.sendRedirect("ManageAccounts.jsp?msg="+a.getUsername());
%>