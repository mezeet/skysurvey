<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- jstl 변수 사용을 위해 taglib 로드! -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 

	//  프로젝트 경로 추출하여 path 에 담기
	String path = request.getContextPath();
    //  만약 프론트 컨트롤러에서 전달받은 main 값이 없다면 기본으로 main.jsp 를 출력
	String main = (String)request.getAttribute("main");
  if(main==null) {request.setAttribute("main","/service/main/main.jsp");};
%>
<c:set var="path" value="<%=request.getContextPath() %>" />


<!-- 상대경로 지정을 위해 jstl path 변수에 프로젝트 경로명 저장 -->

<!-- HTML 영역 시작 -->
<!DOCTYPE html>
<html lang="ko">

	<!-- <head>영역 시작  -->
	<%@include file="./common/header-head.jsp"%>
	<!-- 
		정적 include 를 사용해서 부모에서 정의한 변수를 자식 페이지에서 그냥 쓸 수 있게 한다.
		동적 jsp:include 디렉티브를 사용하면 param 을 자식으로 넘겨줘야 거기서 쓸 수 있다. 귀찮아.
	 -->
	<!-- <head>영역 끝  -->
	
	<!-- 	<body> 영역 시작 -->
	<body>
	
		<!-- 		고정 헤더 네비게이션 막대 부분 시작 -->
		<%@include file="./common/header-nav.jsp"%>
		<!-- 		고정 헤더 네비게이션 막대 부분 시작 -->
		
		<!-- 메인 영역 시작-->
		<div class="container" id="main"><!-- container 클래스는 콘텐츠를 중앙으로 정렬시킨다. -->
		
			<!-- 	본문 영역 시작 -->
			<jsp:include page="${main}"></jsp:include>
			<!-- 	본문 영역 끝 -->
		
			
			<!--	모달 영역 시작 -->
			
			<!-- 모달- 로그인 시작-->
			<div id="loginModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
			  <div class="modal-dialog">
			  <div class="modal-content">
			      <div class="modal-header">
			          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			          <h2 class="text-center"><img src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100" class="img-circle"><br>Login</h2>
			      </div>
			      <div class="modal-body">
			          <form class="form col-md-12 center-block">
			            <div class="form-group">
			              <input type="text" class="form-control input-lg" placeholder="Email">
			            </div>
			            <div class="form-group">
			              <input type="password" class="form-control input-lg" placeholder="Password">
			            </div>
			            <div class="form-group">
			              <button class="btn btn-primary btn-lg btn-block">Sign In</button>
			              <span class="pull-right"><a href="#">Register</a></span><span><a href="#">Need help?</a></span>
			            </div>
			          </form>
			      </div>
			      <div class="modal-footer">
			          <div class="col-md-12">
			          <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
					  </div>	
			      </div>
			  </div>
			  </div>
			</div>
			<!--	모달-로그인 끝 -->
			
			<!--	모달 영역 끝 -->
			
		</div>
		<!-- 메인 영역 끝 -->

		<!-- 푸터 시작 -->
		<div class="row footer">
				<div class="container">
						<div class="col-md-12">
						dfdddd
						</div>
				</div>
		</div>
		<!--	푸터 끝 -->
		
		<!-- 스크립트 영역 시작 -->
		<script src="${path}/assets/js/jquery-2.1.3.min.js"></script>
		<script src="${path}/assets/js/bootstrap.min.js"></script>
		<script src="${path}/assets/js/scripts.js"></script>
		<!-- 스크립트 영역 끝 -->
	</body>
<!-- 	<body> 영역 끝 -->
</html>
<!-- HTML 영역 끝 -->