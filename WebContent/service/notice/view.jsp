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
  // 0. 매개 변수로 넘겨준 등급 값을 구한다.
  request.setCharacterEncoding("UTF-8"); 
 int no= Integer.parseInt(request.getParameter("no"));
 String grade= request.getParameter("grade");

 // 1. NoticeBean 제너릭 쓰는 리스트 객체 에다가 DB 조회 결과를 집어넣어서 리퀘스트 객체에 붙인다.
 // 1-1. DB 접속하고 notice 테이블에서 모든 자료를 쿼리 한 결과를 ResultSet 인스턴스에 담기
 Class.forName("oracle.jdbc.driver.OracleDriver");
 String URL ="jdbc:oracle:thin:@211.183.7.63:1521:orcl";
 String ID ="java21";
 String PW ="java21";
 Connection con = DriverManager.getConnection(URL,ID,PW);
 
 // 1-1-1. 등급에 따라 쿼리를 달리 하여 ResultSet 에 인스턴스인 rs 에 담는다.
 String sql;
 if(grade.equals("9")){
 	sql = "select no,title,content "
 			 +" ,to_char(startdate,'yyyy-mm-dd') startdate "
 			 +" ,to_char(enddate,'yyyy-mm-dd') enddate "
 			 +" ,to_char(regdate,'yyyy-mm-dd') regdate "
 			 +" from notice "
 	     +" where no=?"
 	     +" order by enddate desc";
 	
 }else{
	 sql = "select no,title,content"
 			 +",to_char(startdate,'yyyy-mm-dd') startdate "
 			 +",to_char(enddate,'yyyy-mm-dd') enddate "
 			 +",to_char(regdate,'yyyy-mm-dd') regdate "
 			 +" from notice "
			 +" where no=?  AND to_char(enddate,'yyyy-mm-dd') >= to_char(sysdate, 'yyyy-mm-dd') "
	     +" order by enddate desc ";
 	}
 PreparedStatement pstmt = con.prepareStatement(sql);
 pstmt.setInt(1, no);
 ResultSet rs = pstmt.executeQuery();

   // 1-2. 쿼리 결과물을 꺼내서 List에 담기
 NoticeBean bean = null;
 while(rs.next()){
	bean = new NoticeBean();
	bean.setNo(rs.getInt("no"));
	bean.setTitle(rs.getString("title"));
	bean.setContent(rs.getString("content"));
	bean.setStartdate(rs.getString("startdate"));
	bean.setEnddate(rs.getString("enddate"));
	bean.setRegdate(rs.getString("regdate"));
  // 	list.add(bean);
   }
 
   //1-3. 리퀘스트 객체에 붙이기
  request.setAttribute("bean", bean);
  request.setAttribute("grade", grade);
  request.setAttribute("no", bean.getNo());
  %>
  
<!--    현재 페이지에서 생성한 request 객체를 포워딩한 페이지에 고대로 넘긴다. -->
<!--  즉 list.jsp 뷰 페이지에서 DB에서 가져온 값에 접근할 수 있다는 말이다.  -->
  <jsp:forward page="../../view/notice/view.jsp" />