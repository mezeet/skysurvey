<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- jsql c:choose c:when c:if 태그를 사용하기 위해서 jstl 라이브러리를 집어넣는다. -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<!--  일반적인 action=주소 로 요청하고 값 받기 예시 카드 시작 -->
		<div class="row">
			<div class="col-xs-12">
				<div class="well well-sm">
				
					<!-- 자 이제 우리가 만들어 놓은 testRequest 클래스에 폼 내부에 입력값을 전송해 봅시다. -->
					<!-- 이름은 inputId 와 inputPassword 입니다. -->
					<form action="TestRequest.do" method="post" class="form-horizontal" role="form">
						<div class="row">
							<div class="col-xs-5">
						  		아이디  <input type="text" name="inputId" id="inputId">
							</div>	
							<div class="col-xs-5">
						   		암호 <input type="password" name="inputPassword" id="inputPassword" >
							</div>
							<div class="col-xs-2">
						    <button class="btn btn=" type="submit">submit 버튼</button>
							</div>
						</div>		
					</form>
				</div>
			</div>
		</div>
		<!--   일반적인 action=주소 로 요청하고 값 받기 예시 카드 끝 -->
			
		<!-- 요청 결과로 testRequest 클래스로부터 돌려받는 상태값 확인 카드 시작 -->
		<div class="row">
			<div class="col-xs-12">
				<div class="well well-sm">
					<form class="form-horizontal" role="form">
						<div class="row">
							<div class="col-xs-5">
						  	 사용자 인가? :  ${isUser}
							</div>
						</div>
						<div class="row">
							<div class="col-xs-5">
						   	 <span>성공인가? ${state}</span>
						   	 
                  <!--	state 변수에 있는 값을 검사해서 특정 태그 내용을 보이거나 안보이게 한다. -->
						   	 	<c:choose>
							   	 <c:when test="${state == 'success'}">
							   	 	 <div class="alert alert-success">...</div>
							   	 </c:when>
							   	 <c:when test="${state == 'warning'}">
							   	 	 <div class="alert alert-warning">...</div>
							   	 </c:when>
						   	 </c:choose>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
						    <ul class="list-group">
								  <li class="list-group-item">번호 : ${tbean.userNo}</li>
								  <li class="list-group-item">아이디 : ${tbean.id}</li>
								  <li class="list-group-item">이름 : ${tbean.name}</li>
								  <li class="list-group-item">포인트 : ${tbean.point}</li>
								  <li class="list-group-item">프로파일 완성도 : ${tbean.profileRatio}</li>
								</ul>
							</div>
						</div>		
					</form>
				</div>
			</div>
		</div>
		<!-- 요청 결과로 testRequest 클래스로부터 돌려받는 상태값 확인 카드 끝 -->
		

		<!-- ajax 로   요청하고 값 받기 예시 카드 시작-->
		<div class="row">
			<div class="col-xs-12">
				<div class="well well-sm">
				
					<!-- 자 이제 우리가 만들어 놓은 testRequest 클래스에 폼 내부에 입력값을 전송해 봅시다. -->
					<!-- 이름은 inputId 와 inputPassword 입니다. -->
					<form method="post" action="TestAjax" class="form-horizontal" role="form" id="testForm">
						<div class="row">
							<div class="col-xs-5">
						  		아이디  <input type="text" name="inputId" id="inputId">
							</div>	
							<div class="col-xs-5">
						   		암호 <input type="password" name="inputPassword" id="inputPassword" >
							</div>
							<div class="col-xs-2" id="ajaxButton">
						    <button class="btn btn=">ajax 버튼</button>
							</div>
						</div>		
					</form>
				</div>
			</div>
		</div>
		<!-- ajax 로   요청하고 값 받기 예시 카드 끝-->
		
		
		<!-- 요청 결과로 testRequest 클래스로부터 돌려받는 상태값 확인 카드 시작 -->
		<div class="row">
			<div class="col-xs-12">
				<div class="well well-sm">
					<form class="form-horizontal" role="form">
						<div class="row">
							<div class="col-xs-5">
						  	 사용자 인가? :  ${isUser}
							</div>
						</div>
						<div class="row">
							<div class="col-xs-5">
						   	 <span>성공인가? <input class="state"></span>
						   	 
                  <!--	state 변수에 있는 값을 검사해서 특정 태그 내용을 보이거나 안보이게 한다. -->
						   	 	<c:choose>
							   	 <c:when test="${state == 'success'}">
							   	 	 <div class="alert alert-success">...</div>
							   	 </c:when>
							   	 <c:when test="${state == 'warning'}">
							   	 	 <div class="alert alert-warning">...</div>
							   	 </c:when>
						   	 </c:choose>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
						    <ul class="list-group">
								  <li class="list-group-item">번호 : ${tbean.userNo}</li>
								  <li class="list-group-item">아이디 : ${tbean.id}</li>
								  <li class="list-group-item">이름 : ${tbean.name}</li>
								  <li class="list-group-item">포인트 : ${tbean.point}</li>
								  <li class="list-group-item">프로파일 완성도 : ${tbean.profileRatio}</li>
								</ul>
							</div>
						</div>		
					</form>
				</div>
			</div>
		</div>
		<!-- 요청 결과로 testRequest 클래스로부터 돌려받는 상태값 확인 카드 끝 -->

		 
	<!--  투표 간단 설문 작성 카드 시작 -->
		<div class="row">
			<div class="col-xs-12">
				<div class="well">
					<form class="form-horizontal" role="form">
						<!-- id:qtitle = 설문 제목 -->
						<div class="row" id="qtitle">
							<div class="col-xs-11">
								<div class="btn-group btn-group-justified">
								  <a type="button" class="btn btn-default active"><i class="fa fa-check"></i>&nbsp; 투표</a>
								  <a type="button" class="btn btn-default" id="sbutton"><i class="fa fa-weixin"></i>&nbsp; 답변</a>
								  <a type="button" class="btn btn-default"><i class="fa fa-star"></i>&nbsp; 평가
								  </a>
								  <a type="button" class="btn btn-default"><i class="fa fa-thumbs-up"></i>&nbsp; 대결</a>
								  <a type="button" class="btn btn-default"><i class="fa fa-list-alt"></i>&nbsp; 복합</a>
								</div>
							</div>
							<div class="col-xs-1">
								<button type="button" class="close" aria-hidden="true">×</button>
							</div>
						</div>
						<!-- id:qselection = 설문 선택모음 -->
						<div class="row" id="qselection">
							<div class="col-xs-12" id="area" >
								
								<!--	기본 선택지1 시작-->
								<div class="row">
									<div class="col-xs-12">
										<div class="input-group">
										  <span class="input-group-addon"> 4 </span>
										  <input type="text" class="form-control"  placeholder="선택지 입력">
										  <span class="input-group-addon btn" id="removeSelection"> <i class="fa fa-times"></i> </span>
										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="row">
							<div class="col-xs-1">
								<a type="button" class="btn btn-default" id="addSelection"><i class="fa fa-plus"></i></a>
							</div>
							<div class="col-xs-8">
								<div class="btn-group" data-toggle="buttons">
								  <a class="btn btn-default disabled" href="#"><i class="fa fa-clock-o"></i></a>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option1">1개월
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option2">2개월
								  </label>
								  <label class="btn btn-default">
								    <input type="radio" name="options" id="option3">3개월
								  </label>
								</div>
							</div>
							<div class="col-xs-3 align-right">
								<button type="button" class="btn btn-default btn-block">만들기</button>
							</div>
						</div>
						<!-- 	카테고리 영역 시작 -->
						<div class="row">
							<div class="col-xs-12">
								<div class="btn-group btn-group-justified" data-toggle="buttons">
								  <label class="btn btn-default" data-toggle="tooltip" title="스포츠">
								    <input type="radio" name="options" id="option1"><i class="fa fa-futbol-o"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="주거&환경">
								    <input type="radio" name="options" id="option2"><i class="fa fa-home"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="미용 및 화장품">
								    <input type="radio" name="options" id="option3"><i class="fa fa-neuter"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="여행">
								    <input type="radio" name="options" id="option4"><i class="fa fa-suitcase"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="음식">
								    <input type="radio" name="options" id="option5"><i class="fa fa-cutlery"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="건강">
								    <input type="radio" name="options" id="option6"><i class="fa fa-heartbeat"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="자동차">
								    <input type="radio" name="options" id="option7"><i class="fa fa-car"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="비즈니스">
								    <input type="radio" name="options" id="option8"><i class="fa fa-briefcase"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="컴퓨터 및 인터넷">
								    <input type="radio" name="options" id="option9"><i class="fa fa-laptop"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="기타">
								    <input type="radio" name="options" id="option10"><i class="fa fa-globe"></i>
								  </label>
								  <label class="btn btn-default" data-toggle="tooltip" title="라이프 스타일">
								    <input type="radio" name="options" id="option11"><i class="fa fa-coffee"></i>
								  </label>

								</div>
							</div>
						</div>
						<!-- 	카테고리 영역 끝 -->
					</form>
				</div>
			</div>
		</div>
		<!--  투표 간단 설문 작성 카드 끝-->

		