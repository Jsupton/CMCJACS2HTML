<%@page language="java" import="edu.csbsju.*,java.util.*"%> 
<%@include file="Security.jsp"%>

<% DBController d = new DBController();
String username = request.getParameter("Username"); 
String password = request.getParameter("Password");
String firstName = request.getParameter("FirstName");
String lastName = request.getParameter("LastName");

if(username != "" && password != ""){
	boolean b = d.addAccount(firstName, lastName, username, password, 'u', 'Y');
	if(b)
		response.sendRedirect("index.jsp?Error=7");
	else
		response.sendRedirect("NewUser.jsp?Error=4");
}
else if(username == "" && password == ""){
	response.sendRedirect("NewUser.jsp?Error=3");
}
else if(username == ""){
	response.sendRedirect("NewUser.jsp?Error=1");
}
else if(password == ""){
	response.sendRedirect("NewUser.jsp?Error=2");
}
%>