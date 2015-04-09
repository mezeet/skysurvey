/**
 * 로그인/로그아웃 모달창 클릭시 요청/처리될 AJAX 요청
 * 회원가입 폼 전송시 요청/처리될 AJAX 요청
 */

// 문서 내에 모든 요소가 불러와서 준비가 된 상태에서 실행
$(document).ready(function(){
	
	// 시작 : 로그인 전송 버튼 
	//	로그인 전송 버튼이 클릭될 때!
	$('#login_submit').click(function() {
		
	// 폼 직렬화(스트림을 목적으로 객체를 변환)
	var formData = $("#login_form").serialize();
		
	    // 전송 폼 값 확인
		alert(formData);
			
		// 아이디/암호 체크하는 서블릿으로 폼 내용을 전송 및 결과값 수신
		$.ajax({      
	    type:"post",      // 보내는 방식
	    data: formData,   // 보내는 자료 - 직렬화된 폼 자료
	    url:"Login", // 요청주소
	    dataType:'text',  // 받을 자료 종류, json 이다.
	  	success:function(result){	  			
	  		
	  			// 결과 값 확인
	  		alert(result);
	  		       
	  			// 로그인 서블릿에서 아이디와 암호를 체크한 결과가 이상하면
  			if(result=="noUser" || result=="wrongPassword"){
  					// 경고문구 숨김을 해체한다.
  				$('login_form_alert').removeClass('hide');
  			 	}
	  				
	  			// 로그인 서블릿 아이디 암호체크 통과하여 사용자임이 증명 되면
	  		if(result=="isUser"){
	  			window.location.replace("login.do");
	  			}
	  		
	  		}, // 성공했을때 실행할 콜백, args 에는 받아온 결과내용이 들어 있다.
	      
	    error:function(e){  
	        alert(e.responseText);  
	    	}// 실패했을때 실행할 콜백, e는 오류 객체이고 responseText 로 결과내용을 출력
		}); 	
	});
	// 끝 : 로그인 전송 버튼
	
	// 시작 : 로그아웃 버튼 
	//	로그아웃 버튼이 클릭될 때!
	$('#header_menu_logout').click(function() {
	
		window.location.replace("logout.do");
			
	});
	// 끝 : 로그아웃 버튼
	
	// 시작 : 회원 가입 버튼 
	//	로그인 전송 버튼이 클릭될 때!
	$('#registration_submit').click(function() {
		
	// 폼 직렬화(스트림을 목적으로 객체를 변환)
	var formData = $("#registraion_form").serialize();
		
	    // 전송 폼 값 확인
		alert(formData);
			
		// 아이디/암호 체크하는 서블릿으로 폼 내용을 전송 및 결과값 수신
		$.ajax({      
	    type:"post",      // 보내는 방식
	    data: formData,   // 보내는 자료 - 직렬화된 폼 자료
	    url:"Registraion", // 요청주소
	    dataType:'text',  // 받을 자료 종류, json 이다.
	  	success:function(result){	  			
	  		
	  			// 결과 값 확인
	  		alert(result);
	  		       
	  			// 로그인 서블릿에서 아이디와 암호를 체크한 결과가 이상하면
  			if(result=="noUser" || result=="wrongPassword"){
  					// 경고문구 숨김을 해체한다.
  				$('login_form_alert').removeClass('hide');
  			 	}
	  				
	  			// 로그인 서블릿 아이디 암호체크 통과하여 사용자임이 증명 되면
	  		if(result=="isUser"){
	  			window.location.replace("login.do");
	  			}
	  		
	  		}, // 성공했을때 실행할 콜백, args 에는 받아온 결과내용이 들어 있다.
	      
	    error:function(e){  
	        alert(e.responseText);  
	    	}// 실패했을때 실행할 콜백, e는 오류 객체이고 responseText 로 결과내용을 출력
		}); 	
	});
	// 끝 : 회원가입 버튼
	
	
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