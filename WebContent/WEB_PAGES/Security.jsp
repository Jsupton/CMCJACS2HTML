<%@page language="java" import="edu.csbsju.*,java.util.*"%>
<%
UserUI currentUser = (UserUI) session.getAttribute("currentUser");
AdminUI currentAdmin = (AdminUI) session.getAttribute("currentAdmin");
if(currentAdmin==null && currentUser == null){
	response.sendRedirect("index.jsp?Error=5");
	return;
}
%>