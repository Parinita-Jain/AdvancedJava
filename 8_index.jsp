<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
  
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String fgcolor = config.getInitParameter("fgcolor"); 
String bgcolor = config.getInitParameter("bgcolor");

application.setAttribute("fgcolor", fgcolor);
application.setAttribute("bgcolor", bgcolor);

%>

<%=bgcolor %> + <%=fgcolor %>
<h1>Welcome</h1>
<form action="welcome.jsp">
	Username:
	<input type="text" name="username"/>
	Password:
	<input type="password" name="password"/>
	<input type="submit" value="Go"/>
</form>
</body>
</html>