<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jquery 라이브러리 CDN 추가(필수) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>

<!-- jquery 사용 -->
<script type="text/javascript">
	$(document).ready(function(){
		//alert(" 제이쿼리 사용준비! ");
		$("*").css('color','blue'); // 모든요소 (All)
		$("h2").css("color","red"); // 특정요소 (태그명)
		$("#t1").css("color","green");	// 아이디 속성 (#아이디)
		$(".t2").css("color","yellow");	// 클래스 속성 (.클래스명)
		
		// input태그의 글자색을 변경
		$("input").css("color","black");
		
		// 속성탐색 선택자
		// 아이디-red, 비밀번호-blue
		$("input[type=text]").css("color","red");
		//$("input[type=password]").css("color","blue");
		$("input[type^=p]").css("color","blue");
		
		$("tr:first").css("background","yellow");
		// 홀수
		$("tr:odd").css("background","green");
		// 짝수
		$("tr:even").css("background","blue");
		
		
	});
</script>

<!-- <style type="text/css"> -->
<!-- /* 	h2{ */ -->
<!-- /* 		color: red; */ -->
<!-- /* 	} */ -->
<!-- </style> -->


</head>
<body>
	<h1>/jq1/jqueryTest2.jsp</h1>
	
	<!-- https://flukeout.github.io/ -->
	<!-- JQuery(JavaScript) : HTML/CSS코드를 제어 -->
	
	<h2 id="t1"> 제목 1 </h2>
	<h2 class="t2"> 제목 2 </h2>
	
	<hr>
	
	아이디 : <input type="text"> <br>
	비밀번호 : <input type="password"> <br>
	
	<hr>
	<table>
		<tr>
			<td>1</td><td>2</td><td>3</td>
		</tr>
		<tr>
			<td>1</td><td>2</td><td>3</td>
		</tr>
		<tr>
			<td>1</td><td>2</td><td>3</td>
		</tr>
		<tr>
			<td>1</td><td>2</td><td>3</td>
		</tr>
	
	</table>
	
	
	
	
	
	
	
	
</body>
</html>