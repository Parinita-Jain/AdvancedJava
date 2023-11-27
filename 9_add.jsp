<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errorhandling.jsp"%>
    
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Adding code in the scriptlet tag -->
<%
	String username = (String)session.getAttribute("username");

	if(username!=null){


	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	String bgcolor = (String)application.getAttribute("bgcolor");
%>

<h2>Hello, <%=username %></h2>

<br/>
<a href="logout.jsp">Logout</a>

<%=bgcolor %>

<%//Adding code in expression tag %>
<b>Sum = <%=add(num1,num2) %></b>
<%} 
else{
	request.getRequestDispatcher("index.jsp").forward(request, response);
}
%>

<%-- Adding code in the declarative tag --%>
<%!int add(int a, int b){
	return a+b;
	}
%>


<%-- Overriding jspInit() and jspDestroy() --%>
<%! public void jspInit() {
	System.out.print("JSP Initialized");
  }
%>

<%! public void jspDestroy() {
	System.out.print("JSP Destroyed");
  }
%>
</body>
</html>