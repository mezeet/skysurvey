<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- jstl 변수 사용을 위해 taglib 로드! -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//  프로젝트 경로 추출하여 path 에 담기
	String path = (String)request.getContextPath();
    //  만약 프론트 컨트롤러에서 전달받은 main 값이 없다면 기본으로 main.jsp 를 출력
	String main = (String)request.getAttribute("main");
  if(main==null) {request.setAttribute("main","/service/member/profile.jsp");};
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
	<div class="container" id="main">
		<!-- container 클래스는 콘텐츠를 중앙으로 정렬시킨다. -->

		<div class="row">
		<!-- 	본문 좌측 영역 시작 -->
			<c:choose>
				<c:when test="${main !='/service/member/profile.jsp' }">
					<div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
									<jsp:include page="${main}"></jsp:include>
			</div>
				</c:when>
				<c:when test="${main =='/service/member/profile.jsp' }">
					<div class="col-xs-12">
									<jsp:include page="${main}"></jsp:include>
			</div>
				</c:when>
			</c:choose>

		
		<!-- 	본문 좌측 영역 끝 -->
		
		<!-- 	본분 우측 영역 시작 -->
		<c:if test="${main !='/service/member/profile.jsp' }">
			<div class="col-sm-4  visible-md visible-lg">
				<div class="row">
					<div class="col-sm-11 col-sm-push-1">
						<%@include file="./common/main-sidenav.jsp"%>
					</div>
				</div>
			</div>
			
			</c:if>
		<!-- 	본문 우측 영역 끝 -->
		</div>

		<!--	모달 영역 시작 -->
		<%@include file="./common/main-modals.jsp"%>
		<!--	모달 영역 끝 -->

	</div>
	<!-- 메인 영역 끝 -->

	<!-- 푸터 시작 -->
	<%@include file="./common/footer-footer.jsp"%>
	<!--	푸터 끝 -->

	<!-- 스크립트 영역 시작 -->
	<%@include file="./common/footer-script.jsp"%>
	<!-- 스크립트 영역 끝 -->
	
</body>
<!-- 	<body> 영역 끝 -->
</html>
<!-- HTML 영역 끝 -->