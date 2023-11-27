<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!-- include directive -->
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Main Page</h1>

<%
String color = request.getParameter("color");
%>

<jsp:include page="color.jsp">
	<jsp:param value="<%=color %>" name="color"/>
	<jsp:param value="file included" name="message"/>
</jsp:include>

</body>
</html>