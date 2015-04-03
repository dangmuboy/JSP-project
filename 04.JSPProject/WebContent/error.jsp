<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
    
    <html>
    <head>
    	<title>JSP/Servlet Example</title>
    </head>
    
    <body>
    	<h1>ERROR!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</h1>
    	<%= exception.getMessage() %><!-- 왜 에러났는지  -->
    								 <!-- page 지시자 isErrorPage="true"가 없으면 사용 불가 -->
    </body>
    </html>