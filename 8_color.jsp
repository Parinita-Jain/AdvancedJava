<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	String color = request.getParameter("color"); 
	String message = request.getParameter("message");
	
%>

<h4>The message is <%= message%></h4>

<div style="color:<%= color %>">Welcome to color page</div>
</body>
</html>