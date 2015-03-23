<%@page import="java.util.ArrayList"%>
<%@page import="com.webjjang.board.bean.NoticeBean"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8"); 
String no = request.getParameter("no");
%>
<%
 // 1. NoticeBean 제너릭 쓰는 리스트 객체 에다가 DB 조회 결과를 집어넣어서 리퀘스트 객체에 붙인다.
 // 1-1. DB 접속하고 notice 테이블에서 모든 자료를 쿼리 한 결과를 ResultSet 인스턴스에 담기
 Class.forName("oracle.jdbc.driver.OracleDriver");
 String URL ="jdbc:oracle:thin:@211.183.7.63:1521:orcl";
 String ID ="java21";
 String PW ="java21";
 Connection con = DriverManager.getConnection(URL,ID,PW); 
   
  %>
 
<!--  post 방식으로 넘겨 받은 키-값 속성을 jsp 의 setProperty 액션태그를 사용해서 자동으로 집어넣는다. -->
 
  <jsp:useBean id="bean" class="com.webjjang.board.bean.NoticeBean" />
  <jsp:setProperty name="bean" property="*" />
  
  <%
   
 String sql;
 
 	sql = " delete from notice " 
 			 +" where no=?";
 	     
 PreparedStatement pstmt = con.prepareStatement(sql);
 pstmt.setString(1, no);

 pstmt.executeQuery();
 
 response.sendRedirect("../../service/notice/list.jsp?grade=9");
	
 %>
    
  