<%@page language="java" import="edu.csbsju.*,java.util.*"%>
<%@include file="Security.jsp"%>

<% UserUI u = (UserUI) session.getAttribute("currentUser");
User user = u.getCurrentUser(); 
University uni = u.getAUniversity(request.getParameter("University"));
u.addUniversityToSavedSchools(uni.getUniversityName());
response.sendRedirect("UserMenu.jsp");
%>