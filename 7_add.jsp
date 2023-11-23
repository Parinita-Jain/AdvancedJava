<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	String bgcolor = (String)application.getAttribute("bgcolor");
%>

<%=bgcolor %>

<%-- Adding code in the declarative tag --%>
<%!int add(int a, int b){
	return a+b;
	}
%>

<%//Adding code in expression tag %>
<b>Sum = <%=add(num1,num2) %></b>

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