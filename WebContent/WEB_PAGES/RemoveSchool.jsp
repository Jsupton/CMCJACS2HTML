<%@page language="java" import="edu.csbsju.*,java.util.*"%>

<% UserUI u = (UserUI) session.getAttribute("currentUser");
User user = u.getCurrentUser(); 
University uni = u.getAUniversity(request.getParameter("UniversityName"));
u.removeUniversityFromSavedSchools(uni.getUniversityName());
response.sendRedirect("UserMenu.jsp");
%>