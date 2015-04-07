/**
 * 로그인과 회원등록 관련 화면에 관련된 jquery 소스만 담았다.
 * 담당자 : 고재범
 * 전체div : servaym
 * 상위div id : vote-title, answer-title, appraiser-title, versus-title
 * 각 a button : opvote, opanswer, opappraiser, opversus, opevery
 */
$(function() {
    $('.opvote').click(function () {
    	alert("vote");
    	$(".servaym>div").hide();
    	$("#vote").show();
    });
    $('.opanswer').click(function () {
    	alert("answer");
    	$(".servaym>div").hide();
    	$("#answer").show();
    });
    $('.opappraiser').click(function () {
    	alert("appaiser");
    	$(".servaym>div").hide();
    	$("#appaiser").show();
    });
    $('.opversus').click(function () {
    	alert("versus");
    	$(".servaym>div").hide();
    	$("#versus").show();
    });
    $('.opevery').click(function () {
    	alert("every");
    	$(".servaym>div").hide();
    	$("#every").show();
    });
/**
 * T#addSelection 버튼 클릭 시 qselection.html 조각을 ajax 로 load 한 뒤
 * .qselection 에다가 집어 넣는다.
 */
	$('#addSelection').click(function() {
		alert("add");
    	no = $("#qselection").children().children().length; // 현재 문항수 카운트
    	
	    if($("#qselection").children().children().length >=6){ // 현재 카운트가 5 이상이면 추가불가
	    	alert("5개 이상 보기문항을 추가할 수 없습니다.");
	    } else{ // 현재 문항수 카운트가 5 이하일때 아작스로 추가보기를 생성한다
	    	alert("ajax");
	    	$.ajax({      
	    	type:"post",                // 보내는 방식
	    	// 요청주소에 no로 현재 문항수 카운트하여 전달
	    	// no가 보기문항 위의 '질문내용(<div>로 구현)'도 카운트 하기때문에 따로 +1할 필요없음
	    	url:"./qselection.jsp?no="+no,    
	    	dataType:'html',            // 받을 자료 종류, html 은 생략가능?
	    	
	    	success:function(args){
	    		$("#qselection > #area").append(args);
	  			}, // 성공했을때 실행할 콜백, args 에는 받아온 결과내용이 들어 있다.
	      
	  		error:function(e){
	  			alert(e.responseText);
	  			}// 실패했을때 실행할 콜백, e는 오류 객체이고 responseText 로 결과내용을 출력
	    	});
	    }
	});
	
	// 보기항목 제거부분
	$('#qselection > #area').on( "click", 'span' ,function() {
		// 이벤트(삭제) 다음 값들 하나씩 가져오기
		$(this).parent().parent().parent().nextAll().find('.bogi').each(function(){
			// 하나씩 가져온 다음 값들 -1로 수정 후 text로 입력
			$(this).text($(this).text()-1);
		});
		// 해당 이벤트 삭제
		$(this).parent().parent().parent().remove();
	});
});