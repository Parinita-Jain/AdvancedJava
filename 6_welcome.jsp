<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%=LocalDateTime.now() %>

<% String username = request.getParameter("username"); 
	String password = request.getParameter("password");
	if (username.equals(password))
	{ %>
		<h1>Welcome, <%= username%></h1>
		
		<form action="add.jsp">
			Number1:
			<input type="number" name="num1"/> 
			Number2:
			<input type="number" name="num2"/>
			<input type="submit" value="Add"/>
		</form>
	<% }
	else
	{ %>
	<h3 style="color:red;">Sorry, username and password does not match.</h3>
	<% } %>
</body>
</html>