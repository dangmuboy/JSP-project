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
				<!-- html�±׿� jsp�ڵ带 �Բ� ��� -->
<%
	out.print("Hello");
	// jsp �ڵ�(java)
%>
</font>
<br>
				<!-- ���� �ϱ� ���� html; br�±� ��� -->

<%	
	out.print("��ȫ���Դϴ�.");
%>

<%
	out.print("<font color='purple'>" + "���� ���½ð��� �Ǿ����� ���ڽ��ϴ�" + "</font>");
%>
</body>
</html>
