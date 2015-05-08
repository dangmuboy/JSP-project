<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    

<%
	String id = request.getParameter("id");	
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");
	
	String sql = "delete member where id=?";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	pstmt.setString(1, id);
	
	
	int result = pstmt.executeUpdate();
	
	
	
	//out.print(result);
	
	if(result ==1)
		response.sendRedirect("list");
	
	
	pstmt.close();
	con.close();
	
	
	
	
	
 %>    


<!DOCTYPE html>
    
    <html>
    <head>
    	<title>JSP/Servlet Example</title>
    </head>
    
    <body>
    
    </body>
    </html>