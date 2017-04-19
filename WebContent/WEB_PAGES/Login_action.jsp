<%@page language="java" import="edu.csbsju.*"%> 

<%  
    String u = request.getParameter("Username");
 	String p = request.getParameter("Password");
    AccountUI au = new AccountUI();
    int loginStatus = au.logOn(u, p); 
    if (loginStatus==0){
    	Account a = au.displayAccount();
    	if(a!=null && a.getType()=='a'){
    		AdminUI admin = new AdminUI(new Admin(a.getFirstName(),a.getLastName(),a.getUsername(),a.getPassword(),a.getType(),a.getStatus()));
    		session.setAttribute("currentAdmin",admin);
        	response.sendRedirect("AdminMenu.jsp");
    	}
    	else if(a!=null && a.getType()=='u'){
    		UserUI user = new UserUI(new User(a.getFirstName(),a.getLastName(),a.getUsername(),a.getPassword(),a.getType(),a.getStatus()));
    		session.setAttribute("currentUser",user);
        	response.sendRedirect("UserMenu.jsp");
    	}
    }
    else if(loginStatus==1){
    	response.sendRedirect("index.jsp?Error=1");}
    else if(loginStatus==2){
    	response.sendRedirect("index.jsp?Error=2");}
    else if(loginStatus==3){
    	response.sendRedirect("index.jsp?Error=3");}
    else if(loginStatus==4){
       	response.sendRedirect("index.jsp?Error=4");}
    
%>