<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.telnor.reset.login.rest.CambioPass" %>	

<%	
	String usuario     =(String)request.getParameter("username");
	String pass        =(String)request.getParameter("password");
	String newPass     =(String)request.getParameter("newPassword");
	
	System.out.println("Tu usuarios es"+"["+usuario+"]"+ "Tu contraseña Anterior es"+"["+pass+"]"+ "Tu nueva Contraseña sera"+ "["+newPass+"]");
	
	String url = "{\"user\": \""+usuario+"\",\"password\": \""+pass+"\",\"newPassword\": \""+newPass+"\"}";
	 		
	CambioPass cambioPassword = new CambioPass();
	cambioPassword.cambiaPass(url);
	String redirectURL = "index.jsp";
	response.sendRedirect(redirectURL);
	
%>	
