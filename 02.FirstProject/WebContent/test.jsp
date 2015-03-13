<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<font color="purple">
				<!-- html태그와 jsp코드를 함께 사용 -->
<%
	out.print("Hello");
	//jsp 코드(java)
	//out ; JSP 내장객체 => out은 객체지만 개발자의 편의를 위해서 new하지 않아도 객체 생성 가능
	
%>
</font>
<br>
				<!-- 띄어쓰기 하기 위해 html; br태그 사용 -->

<%	
	out.print("김홍민입니다.");
%>
<br>
<%
	out.print("<font color='purple'>" + "빨리 쉬는시간이 되었으면 좋겠습니다" + "</font>");
%>
</body>
</html>
