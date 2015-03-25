/**
 * Test 페이지에서 사용할 스크립트. #addSelection 버튼 클릭 시 qselection.html 조각을 ajax 로 load 한 뒤 .qselection 에다가 집어 넣는다.
 */

$(document).ready(function(){

	//	선택추가 버튼을 클릭 시 아작스 요청으로 html 페이지 조각을 가져와 삽입합니다.
	$('#addSelection').click(function() {
	
		$.ajax({      
	    type:"post",                // 보내는 방식
	    url:"./qselection.html",    // 요청주소
	    dataType:'html',            // 받을 자료 종류, html 은 생략가능?
	    
	  	success:function(args){	  			
	  		$("#qselection > #area").append(args);
	  		}, // 성공했을때 실행할 콜백, args 에는 받아온 결과내용이 들어 있다.
	      
	    error:function(e){  
	        alert(e.responseText);  
	    	}// 실패했을때 실행할 콜백, e는 오류 객체이고 responseText 로 결과내용을 출력
		}); 	
	});
	
	//  항목 추가 버튼이 있는 span 요소에다가 on 을 걸어서
	// 문서가 로드 된 이후에 ajax 로 삽입 된 항목에 있는 버튼도 ajax 작동을 할 수 있게 해준다.
	// 즉, 새로 생성된 html 요소를 jquery 돔 요소로 자동 인식시키는 방법이다.
	$('#qselection > #area').on( "click", 'span' ,function() {
		$(this).parent().parent().parent().remove();
	});
	
	// 버튼이 클릭 시 아작스 요청하고 폼에 입력한 자료를 전달합니다.
	$('#ajaxbutton').click(function(){
		

		
		$.ajax({      
		    type:"post",                // 보내는 방식
		    url:"./testRequest.do",    // 요청주소
		    dataType:'json',            // 받을 자료 종류, html 은 생략가능?
		    params: '',
		  	success:function(args){	  			
		  		$("#qselection > #area").append(args);
		  		}, // 성공했을때 실행할 콜백, args 에는 받아온 결과내용이 들어 있다.
		      
		    error:function(e){  
		        alert(e.responseText);  
		    	}// 실패했을때 실행할 콜백, e는 오류 객체이고 responseText 로 결과내용을 출력
		}); 
	});

}); 
