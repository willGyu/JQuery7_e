<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		// 비동기방식으로 string2.jsp 페이지에 다녀오기
		// + 정보를 전달 string2.jsp 
		$.ajax({
			url : "string2.jsp",
			//type : "GET"(기본값),
			data : { name : "itwill", age : 22 },    // 이름(name) 정보 전달
			success : function(data){ // ajax처리 성공시 가져온 정보(html)
				alert(" 성공적으로 페이지 처리 완료! ");
				$('body').append(data);
			}
		});// ajax끝
		
		$.ajax({
// 			url : "xmlData.jsp",
			url : "xmlData2.xml",
			success : function(data){
				alert(  "xmlData.jsp 페이지 다녀옴" );	
				//alert(data);
				console.log(data);
				//$('body').append(data);
				
				$(data).find("person").each(function(){
					var name = $(this).find("name").text();
					var gender = $(this).find("gender").text();
					var hobby = $(this).find("hobby").text();
					
					$('body').append("<hr>");
					$('body').append("name:"+name);
					$('body').append(", gender:"+gender);
					$('body').append(", hobby:"+hobby);
					$('body').append("<hr>");
				});
				
			}			
		});// ajax끝
		
		
		// https://news.jtbc.co.kr/rss
		// https://news-ex.jtbc.co.kr/v1/get/rss/section/70
		$.ajax({
			url : "https://fs.jtbc.co.kr/RSS/sports.xml",
// 			url : "https://news-ex.jtbc.co.kr/v1/get/rss/section/70",
			success : function(result){
				alert(" JTBC RSS데이터 받아옴! ");
				//alert(result);
				console.log(result);
				
				// 가져온 XML데이터에서 출력할 정보를 포함한 태그를 접근
				$(result).find("item").each(function(){
					 var title = $(this).find("title").text();
					 var link = $(this).find("link").text();
					 $("#jtbcDiv").append("<a href='"+link+"' target='_blank'>"+title+"</a><hr>");
				});
				
			}
		});// ajax끝
		
		
		
		
	}); // jquery끝
</script>
</head>
<body>
	<h1>/jq2/jqueryTest5.jsp</h1>
	
	<h2> string2.jsp 페이지로 전달한 데이터 </h2>
	
	
	
	<hr>
	<h2> XML (eXtensible Markup Language) : 확장 가능한 마크업 언어 </h2>
	    => html 코드처럼 태그 형태로 데이터를 저장하는 형태의 언어
	       태그의 이름이 다름(데이터의 이름/종류)
	       XML은 모든 플랫폼에서 동작가능(2000년대 가장 많이 사용된 데이터 포멧)
	
	
	<hr>
	
	<h1> JTBC 스포츠 뉴스 </h1>
	
	<div id="jtbcDiv">
		
	</div>
	
	<hr>
	
	
	
		
	
	
</body>
</html>