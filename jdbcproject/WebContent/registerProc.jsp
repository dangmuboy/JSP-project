<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
    
<%
	String id = request.getParameter("id");
	//out.print(id); 이건 테스트
	// 1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// 2. 데이터 베이스와 연결
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");		//연결주소,아이디,패스워드
	//getConnection 객체의 리턴타입이 Connection 이기 때문에 
	
	// 3. SQL문 실행
	String sql = "insert into member values('"+id+"','1234','홍길동',20,'1','서울시','2015-04-17')";
	Statement stmt = con.createStatement();								//SQL문으로 인식하게 하기위한 객체
	stmt.executeUpdate(sql);	//실행
	// 4. 데이터베이스와 연결 끊음
	stmt.close();
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