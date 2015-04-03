<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
    
    <html>
    <head>
    	<title>JSP/Servlet Example</title>
    </head>
    
    <body>
    <h1>request 객체</h1>
    <table border="1">
    	<tr>	<!--  행=줄 -->
    		<td>getContextPath()</td> <!-- 열=칸 -->
    		<td><%= request.getContextPath() %></td><!-- ContextPath를 호출하는 메소드 -->
    	<tr>
    		<td>getMethod()</td>
    		<td><%= request.getMethod() %></td><!-- 요청 방식을 호출하는 메소드 -->
    	<tr>
    		<td>getRequestURL()</td>
    		<td><%= request.getRequestURI() %></td>
    	<tr>	
    		<td>getRemoteHost()</td>
    		<td><%= request.getRemoteHost() %></td>
    	<tr>	
    		<td>request.getRemoteAddr()</td>
    		<td><%= request.getRemoteAddr() %></td>
    	<tr>	
    		<td>request.getServerName()</td>
    		<td><%= request.getServerName() %></td>
    	<tr>
    		<td>request.getProtocol()</td>
    		<td><%= request.getProtocol() %></td>
    </table>		
    
    </body>
    </html>