<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
    
<%
	//0. 요청처리 (어떨때는 필요하고, 어떨때는 필요없음)
	
	request.setCharacterEncoding("UTF-8");
	//post방식에서 한글 안되면 이거 해보세요
	
	String id = request.getParameter("id");
	String pass = request.getParameter("pwd");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String addr = request.getParameter("addr");
	//out.print(id); 이건 테스트
	
	// 1. JDBC 드라이버 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");
				//		패키지이름   .클래스이름
	// 2. 데이터 베이스와 연결
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jspuserc","jsp1234");		//연결주소,아이디,패스워드
	//getConnection 객체의 리턴타입이 Connection 이기 때문에 
	
	// 3. SQL문 실행
	/*	1) Statement 객체 이용 
	String sql = "insert into member values('"+id+"','"+pass+"','"+name+"',20,'1','서울시','2015-04-17')";
	Statement stmt = con.createStatement();								//SQL문으로 인식하게 하기위한 객체
	//int result = stmt.executeUpdate(sql);	 	//excuteUpdate ; sql툴에서 art+x (실행) 한것과 동일 효과
	//out.print(result);
	
	stmt.executeUpdate(sql);//실행 */
	
	// 2) PreparedStatement 객체 이용
	String sql = "insert into member values(?,?,?,?,?,?,default)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	//바인딩
	pstmt.setString(1, id);
	//첫번째 물음표 매핑; String 타입의 첫번째 물음표를 매핑 하겠다
	pstmt.setString(2, pass);
	pstmt.setString(3, name);
	pstmt.setInt(4, Integer.parseInt(age));
	pstmt.setString(5, gender);
	pstmt.setString(6, addr);
	
	
	int result = pstmt.executeUpdate();
	
	if(result ==1)
		response.sendRedirect("list");
	//가입후 list로 바로 이동하게
	
	//out.print(result);
	
	// 4. 데이터베이스와 연결 끊음
	pstmt.close();
	//stmt.close();
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