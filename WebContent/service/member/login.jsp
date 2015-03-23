<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@include file="../common/top.jsp"%>
<%@include file="../common/pathdefine.jsp"%>
<%@include file="../common/tabbar.jsp"%>
<%@include file="../common/left-menu.jsp"%>
<%@include file="../common/header.jsp"%>
<!-- 수정가능 영역 시작, 화면에서 가운데에 나오는 영역입니다. -->

<%-- 	프로젝트 상대경로 : ${path} --%>


<div class="row">

	<div class="small-10 large-11 small-centered columns">
		<div class="panel callout radius">
  			<h5 class="text-center">로그인 해주세요.</h5>
  			<div class="row">
  				<div class="large-12 columns">
        		<input type="text" placeholder="아이디" />
        	</div>
        </div>
        <div class="row">
        	<div class="large-12 columns">
        		<input type="password" placeholder="암호" />
      		</div>
      	</div>
      	<div class="row collapse">
        	<div class="large-6 columns">
        		<a href="#" class="button small expand">가입</a>
      		</div>
      		<div class="large-6 columns">
        		<a href="#" class="button small expand">로그인</a>
        				
      		</div>
      	</div>
	    </div>
	  </div>
</div>



<!-- 수정가능 영역 끝, 화면에서 가운데에 나오는 영역입니다. -->
	
<%@include file="../common/footer.jsp"%>
<%@include file="../common/bottom.jsp"%>