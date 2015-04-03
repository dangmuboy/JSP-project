<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!--  page지시자 cf)taglib,include -->
<%@ page import="java.io.*" %> <!--  import할때 page지시자를 이용 -->
<%@ page errorPage="error.jsp" %> <!-- 에러가 나면 무조건 이페이지로 -->


<!DOCTYPE html>
    
    <html>
    <head>
    	<title>JSP/Servlet Example</title>
    </head>
<%= str %> <br>

<%= 2/0 %> <br> <!-- 이 코드는 에러;에러메세지로 모든 코드가 다보임->해킹에 악용됨 -->

<%= abs(-10) %>

<%!		//선언식, 선언->호출을 해야되지만 선언식을 이용하면 가능
	String str = "Hello";
	public int abs(int n){
				
				if(n < 0)
					n = -n;
				return n;
	}
%>
    <body>
    
    </body>
    </html>		