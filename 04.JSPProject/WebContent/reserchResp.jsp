<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	response.setContentType("text/html; charset=UTF-8");
	String n = request.getParameter("name");
	String g = request.getParameter("gender");
	String[] s = request.getParameterValues("season");
	
	out.println(n);
	out.println(g);
	
	/* 
	if(g.equals("남자")){
		response.sendRedirect("http://www.naver.com");
	}
	else
		response.sendRedirect("http://www.daum.net");//리다이렉션 -> 페이지 강제 이동
	 */
	if(s == null)
		out.print("선택하세요!");
	
	else{
		/* for(int i=0; i<season.length; i++) {
			
		} */
		
		for(String se : s) {
			out.print(se); //확장for문
		}
	}
%>

<!DOCTYPE html>
    
    <html>
    <head>
    	<title>JSP/Servlet Example</title>
    </head>
    
    <body>
    
    </body>
    </html>