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

<section>
<form action="join.jsp">
<table>
<filedset>회원 가입</filedset>
<tr>
	<td>
	<textarea rows="20" cols="40">
	서베이 서비스약관 (2015. 9. 6 부터 유효)
제1장 총 칙
제 1 조 (목적)
본 약관은 서비스 이용자가 주식회사 다음카카오(이하 “회사”라 합니다)이 
제공하는 온라인상의 인터넷 서비스(이하 “서비스”라고 하며... 접속 가능한 
유·무선 단말기의 종류와는 상관없이 이용 가능한 “회사”가 제공하는 모든 “서비스”를 의미합니다. 
이하 같습니다)에 회원으로 가입하고 이를 이용함에 있어 회사와 회원(본 약관에 동의하고 회원등록을 
완료한 서비스 이용자를 말합니다. 이하 “회원”이라고 합니다)의 권리·의무 및 책임사항을 규정함을
 목적으로 합니다.
제 2 조 (약관의 명시, 효력 및 개정)
1.회사는 이 약관의 내용을 회원이 쉽게 알 수 있도록 서비스 초기 화면에 게시합니다.
2.회사는 온라인 디지털콘텐츠산업 발전법, 전자상거래 등에서의 소비자보호에 관한 법률, 약관의
 규제에 관한 법률, 소비자기본법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
</textarea>
	</td>
</tr>
<tr>
<td>
	<input type="button" value="동의" onclick="location='join.jsp'">
	<input type="button" value="취소" onclick="history.back();">
	</td>
</tr>
</table>

</form>
</section>

<!-- 수정가능 영역 끝, 화면에서 가운데에 나오는 영역입니다. -->
<%@include file="/common/footer.jsp"%>
<%@include file="/common/bottom.jsp"%>