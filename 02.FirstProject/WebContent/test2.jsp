<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>GET</h1>	<!-- 크게 -->
<form method="get" action="HelloServlet">
	이름 : <input type="text" name="name"><br>	
	<!--  Name속성은 실제로 화면에 반영되지는 않음 -->
	<!--  구분하기 위해 사용 -->
	아이디 : <input type="text" name="ID"><br>
	비밀번호 : <input type="password" name ="pwd"><br>
	<input type="submit" value="GET 방식으로 전송"> 
	<!-- submit이 하는 역할; 제출, input(입력양식)은 -->
	<!--  꼭 form_tag안에  -->
</form>
<!-- http://localhost:8888/02.FirstProject/HelloServlet?name=홍길동&ID=test&pwd=1234 -->
	<!-- GET과 POST의 차이점은 주소에 노출 되느냐 마느냐 -->



<a href="HelloServlet">링크로 GET 방식</a>



<hr>			<!-- 수평선 -->
<h1>POST</h1>
<form method="post" action="HelloServlet">
	
	이름 : <input type="text" name="name"><br>	
	아이디 : <input type="text" name="ID"><br>
	비밀번호 : <input type="password" name ="pwd"><br>

	<input type="submit" value="POST 방식으로 전송">
</form>

<hr>		<!-- 수평선 -->
<h1>JSP</h1>
<form method="get" action="test3.jsp">
	
	이름 : <input type="text" name="name"><br>	
	아이디 : <input type="text" name="ID"><br>
	비밀번호 : <input type="password" name ="pwd"><br>

	<input type="submit" value="JSP로전송 방식으로 전송">
</form>
</body>
</html>