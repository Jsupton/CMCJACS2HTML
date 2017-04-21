<%@page language="java" import="edu.csbsju.*,java.util.*"%> 
<%
UserUI u = (UserUI) session.getAttribute("currentUser"); 
String password = request.getParameter("Password");
String firstName = request.getParameter("FirstName"); 
String lastName = request.getParameter("LastName");

u.editStudentProfile(firstName, lastName, password);

response.sendRedirect("UserMenu.jsp");
%>