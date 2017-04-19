<%@page language="java" import="edu.csbsju.*"%> 
<% AdminUI a = (AdminUI) session.getAttribute("currentAdmin"); 
UserUI u = (UserUI) session.getAttribute("currentUser"); 
if(u!=null){
	User user = u.getCurrentUser(); 
	user.logOff();
	request.getSession().removeAttribute("currentUser");
	response.sendRedirect("index.jsp?Error=6");
}
else if(a!=null){
	Admin admin = a.getCurrentAdmin(); 
	admin.logOff();
	request.getSession().removeAttribute("currentAdmin");
	response.sendRedirect("index.jsp?Error=6");
}
	
%>