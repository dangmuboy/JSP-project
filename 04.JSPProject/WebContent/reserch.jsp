<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
    
    <html>
    <head>
    	<title>JSP/Servlet Example</title>
    </head>
    
    <body>
    <h1>설문조사</h1>
    <hr>
    <form method="get" action="reserchResp.jsp">
    	<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"> </td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="radio" name="gender" value="남자">남자
					<input type="radio" name="gender" value="여자">여자</td>
			</tr>
			<tr>
				<td>계절</td>
				<td><input type="checkbox" name="season" value="봄">봄
					<input type="checkbox" name="season" value="여름">여름
					<input type="checkbox" name="season" value="가을">가을
					<input type="checkbox" name="season" value="겨울">겨울</td>
    		<tr>
    		
    			<td colspan="2" align="center">
    				<input type="submit" value="설문조사">
    			<!--  	<input type="reset"  value="취소"></td>-->
    		</tr>
    	</table>
    </form>
   
    
    </body>
    </html>