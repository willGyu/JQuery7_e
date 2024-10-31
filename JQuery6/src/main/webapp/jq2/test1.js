/**
 *  test1.js 파일
 *  직접 실행XX
 */
 // javascript 실행 가능
 //alert("hello");
 
 // jquery 실행 가능
 $(document).ready(function(){
	alert("Hello jQuery (외부 js파일 실행)");	
	
	// 이벤트 : 사용자가 브라우저에 와서 수행하는 모든 동작
	// => 이벤트핸들러 : 이벤트를 처리하기 위한 도구
	
	// input태그가 클릭했을때 
	$('input').click(function(){
		alert(" 제이쿼리 이벤트! ");
	});	
	
	// 모든 이벤트처리 수행(이벤트 위임)
	$('input').on("click",function(){
		alert(" 제이쿼리 이벤트on! ");
	});
	
	
	
	// h2태그를 클릭 할때 해당 h2 태그에 +를 추가하기
	
	$("h2").click(function(){
		//alert("클릭");
//		$(this).html(function(idx,oldHtml){
//			return oldHtml+"+";
//		});
		
		$(this).append(function(){
			return "+";
		});
		
	});
	
	
//	 마우스 이벤트 : 마우스를 올렸을때 다른그림으로 변경
//	$('img').mouseover(function(){
//		//alert("마우스 이벤트");
//		$('img').attr('src',"../jq1/deer.jpg");
//	});
	
//	// 마우스를 내릴때 원래 그림으로 변경
//	$('img').mouseout(function(){
//		$('img').attr('src',"../jq1/cat.jpg");
//	});
	
	// 체이닝 기법
	$('img').mouseover(function(){
			//alert("마우스 이벤트");
			$('img').attr('src',"../jq1/deer.jpg");
	}).mouseout(function(){
		$('img').attr('src', "../jq1/cat.jpg");
	});
		
	
 });// 제이쿼리 끝
 
 
 $(function(){
	// 키보드 이벤트 처리
	
	// textarea 태그에 키보드 입력 이벤트가 발생했을때
	$('textarea').keyup(function(){
		//alert("키보드 입력!");
		
		// 입력된 정보를 가져오기
		var t = $('textarea').val();
		//console.log(t);
		//alert(t.length);
		
		// 키보드로 입력된 글자수를 측정
		// h3태그(아이디:txtLength) 정보에 200에서 입력된 글자수를
		// 뺀 나머지 숫자를 표시 
		$("#txtLength").html(200 - t.length);
		
	});
	
 });
 
 
 /* 효과 - jQuery */
 $(document).ready(function(){
	
	$("h1").click(function(){
		$("h2").show();		
	});
	
	//h2 클릭시 이벤트 발생
	$("h2").click(function(){
		
		//$("h2").hide();
		//$("h2").toggle();
		// slideToggle()/fadeToggle()
		$(this).next().fadeToggle("slow",function(){
			// 콜백함수 - 적용하는 효과가 완전히(100%) 실행후 동작하는 함수
			alert("토글 끝!");
		});
	});
//	$("h2").on("click",function(){
//		
//	});

	
	// div #aniDiv를 클릭 할때 마다 사이즈를 50씩 증가
	 
	$("#aniDiv").click(function(){
		//alert("#aniDiv 클릭!");
		
		// 기존의 요소의 가로,세로 길이 측정
		var width = $(this).css("width");
		var height = $(this).css("height");
		//alert(width+"/"+height);
		
		// 기존의 값 + 50 
//		$(this).css({
//			"width" : parseInt(width) + 50,
//			"height" : parseInt(height) + 50			
//		});
		$(this).animate({
			"width" : parseInt(width) + 50,
			"height" : parseInt(height) + 50			
		});
	});
	
		
 });
 
 
 
 
 $(document).ready(function(){
      $(".slider").bxSlider();
 });
 
 
 

 
 
