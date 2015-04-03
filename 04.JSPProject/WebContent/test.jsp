<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  @가 붙어있으면; 지시자;페이지의 속성을 지정할 때  -->    
<%-- jsp주석 
<%
//JSP쓰고 싶으면 앞뒤 기호 붙여야됨
	int num1=10, num2=20;
	int num3 = num1 + num2;
	
	
	out.print(num3);
	//서블릿은 response.getWriter  출력 스트림을 이용해야됨


	
%> 스크립트릿(Scriptlet)은 JSP 문서 내에 자바 코드를 기술 하는 부분.
본문 어디에서도 자유롭게 사용 가능
--%>
<!--  단축키 ctrl+shift+/ -->
<!DOCTYPE html>
    
    <html>
    <head>
    	<title>JSP/Servlet Example</title>
    </head>
    
    <% out.print("Hello");%>
    <%= "표현식Hello" %>
    
    
    
    <body> 
    
    </body>
    </html>