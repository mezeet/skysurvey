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
	<img alt="" src="../img/myInfo.png">
	<table border = "0">
		<tr>
			<td>회원고유번호</td> <td><input type="text" name="txtMemberNum"/></td>
		</tr>
		<tr>
			<td>성명</td> <td><input type="text" name="txtName" /></td>
		</tr>
		<tr>
			<td>아이디</td> <td><input type="text" name="txtID" /></td>
		</tr>
		<tr>
			<td>나이</td> <td><input type="text" name="txtAge" /></td>
		</tr>
		<tr>
			<td>생년월일</td> <td><input type="text" name="txtBirth" /></td>
		</tr>
		<tr>
			<td>이메일</td> <td><input type="text" name="txtMail" /></td>
		</tr>
		<tr>
			<td>집전화</td> <td><input type="text" name="txtHomeNum" /></td>
		</tr>
		<tr>
			<td>휴대폰</td> <td><input type="text" name="txtMobileNum" /></td>
		</tr>
		<tr>
			<td>집주소</td> <td><input type="text" name="txtHomeAddress" /></td>
		</tr>
		<tr>
			<td>등급고유번호</td> <td><input type="text" name="txtRatingNum" /></td>
		</tr>
		<tr>
			<td></td> <td><input type="submit" value="수정" /> <input type="reset" value="취소" /></td>
		</tr>
	</table>	
	
<!-- 수정가능 영역 끝, 화면에서 가운데에 나오는 영역입니다. -->
<%@include file="/common/footer.jsp"%>
<%@include file="/common/bottom.jsp"%>