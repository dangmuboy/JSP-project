<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
  
	out.print("Hello JSP<Br>"); // out -> 내장객체;만들지않아도 자동으로 만들어져 있음
	
	String n = request.getParameter("name"); // request -> 내장객체
	
	out.print(n);
	
		//JSP로 넘기면 get,post 상관 없음

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



</body>
</html>