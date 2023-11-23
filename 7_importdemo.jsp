<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.ArrayList, java.time.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="importdemo.jsp">
	What is your favourite fruit? 
	<input type="text" name="fruit"/>
	<input type="submit" value="OK"/>
</form>

<%
ArrayList<String> list = new ArrayList<>();
list.add(request.getParameter("fruit"));
%>

<br/>
<%=list %>
<%=LocalTime.now() %>
</body>
</html>