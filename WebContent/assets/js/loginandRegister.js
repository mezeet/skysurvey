/**
 * Test 페이지에서 사용할 스크립트. #addSelection 버튼 클릭 시 qselection.html 조각을 ajax 로 load 한 뒤 .qselection 에다가 집어 넣는다.
 */

$(document).ready(function(){
	
	//	선택추가 버튼을 클릭 시 아작스 요청으로 html 페이지 조각을 가져와 삽입합니다.
	$('#login_submit').click(function() {
		
	// 폼 직렬화(스트림을 목적으로 객체를 변환)
	var formData = $("#login_form").serialize();
		
			alert(formData);
		
		$.ajax({      
	    type:"post",      // 보내는 방식
	    data: formData,   // 보내는 자료 - 직렬화된 폼 자료
	    url:"Login", // 요청주소
	    dataType:'json',  // 받을 자료 종류, json 이다.
	  	success:function(result){	  			
	  				alert(result);
	  		       
	  			 if(result=""){
	  				 
	  			 		}
	  				
	  				
	  				
	  				// 만약 isUser 가 true 이면
	  			if(result==""){
	  				
	  					// 숨겨진 login 메뉴 숨김해제
	  				$('#header_menu_profile').removeClass('hidden');
	  				$('#loginModal').modal('hide');
	  				
	  				   // 사용자 id 숨김 해제 및 c 태그로 도배된 기존 내용을 지우고
	  				  // 현재 받은 member json 값을 넣은 html 조각을 넣어준다. 
	  				
	  				$('#user_profile').removeClass('hidden');
	  				var imgsrc ="http://placehold.it/80";
	  				var point ="1000";
	  				var id = member.id;
	  				var completerate ="60";

	  				makeUserProfile(imgsrc,id,point,completerate);
  				
	  				
	  				
	  				  // 회원가입 영역 숨기기
	  				$('#registration_form').addClass('hidden');
	  				
	  				
	  				   // 로그인 모달창과 헤더 로그인 버튼 숨기기
	  				$('#loginModal').modal('hide');
	  				$('#header_menu_login').addClass('hidden');

	  			}else{	
	  				$('#').addClass('hidden');
	  				}
	  		
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
		

		// url 뒤에 ?키=값&키=값 .. 요렇게 안쓰기 위해서 폼에 담긴 값을 직렬화(serialize) 시킵니다.
		var formData = $("#loginForm").serialize();
		
		
		$.ajax({      
		    type:"post",                // 보내는 방식
		    url:"TestAjax",    // 요청주소
		    dataType:'json',            // 받을 자료 종류, html 은 생략가능?
		    params: formData,          // 서버로 보낼 자료
		  	success:function(args){ 	
		  		alert(args);
		  				$('.state').append(args.state);
		  		}, // 성공했을때 실행할 콜백, args 에는 받아온 결과내용이 들어 있다.
		      
		    error:function(e){  
		        alert(e.responseText);  
		    	}// 실패했을때 실행할 콜백, e는 오류 객체이고 responseText 로 결과내용을 출력
		}); 
	});

}); 

// 회원 정보 값을 주면 회원 영역 html 을 만들어 반환하는 함수
function makeUserProfile(imgsrc,id,point,completerate){
	
	alert(id);
	
		$("#user_media").empty();
		
		var partial ="<a class='thumbnail pull-left' href='#'>";
		partial +="<img class='media-object' src='"+imgsrc+"'>";
		partial +="</a>";
		partial +="<div class='media-body'>";
		partial +="<h4 class='media-heading'>"+id+"</h4>";
		partial +="<p>";
		partial +="<a class='btn btn-block btn-default'>"+point+"</a>";
		partial +="</p>";
		partial +="</div>";
		partial +="</div>";
		
		alert(partial);
		
		$('#user_media').append(partial);
		
		$("#user_progress").empty();
		
		var partial ="<div class='progress-bar progress-bar-info' style='width:"+completerate+"%'>프로필 작성 "+completerate+"완료</div>";
	
	
		$('#user_progress').append(partial);
}