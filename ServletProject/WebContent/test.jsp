<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
    
    <html>
    <head>
    	<title>JSP/Servlet Example</title>
    	<style>
    		/*이게 주석입니다. //이거 안됩니다.*/
    		body{
    			background-image:url("pic.jpg.png");
    			background-repeat:no-repeat;
    			background-attachment: fixed;
    		}
    		input, select, textarea{
    			border:green 2pt solid;
    			color:red;
    			font-size:10px;
    		}
    	
    	</style>
    	<script>
    		function gofunc (){
    			
    			alert("Hello JavaScript!");
    		}
    	
			    	
    	</script>
    </head>
    
    <body>
    <h1>request test</h1>
    <hr>
    
    <form action="TestServlet" onsubmit="return gofunc()"> <!--  submit버튼을 눌렀을때 위에 자바스크립트 함수를 호출-->
    	<label for="label_name">이름 : </label><input type="text" id="label_name" name="t">
    	<br>
    	<label for="label_pwd">비밀번호 : </label><input type="password" id="label_pwd"name="p">
    	<br>
    	<input type="radio" name="gender" value="남자"> 남자
    	<input type="radio" name="gender" value="여자"> 여자 <br>
    	
    	<input type="checkbox" name="ball" value="축구"> 축구
    	<input type="checkbox" name="ball" value="야구"> 야구
    	<input type="checkbox" name="ball" value="농구"> 농구<br>
    	
    	<select name="lang">
    		<option value="java">Java</option>
    		<option value="JSP">JSP</option>
    		<option value="html">HTML</option>
    	</select><br>
    	
    	<!--  라디오 버튼은 name이 같을때 다를때 효과가 다르지만, 체크박스는 아님 -->
    	<!--  체크박스는 배열로 처리하기위해 name을 통일 -->

    	<input type="color" name="mycolor">
    	E-Mail : <input type="email" name="email">

		<textarea rows="20" cols="30" name="tx">
		
		</textarea>    	
    	
    	
    	<input type="submit" value="서버로 제출">

    </form>
    </body>
    </html>