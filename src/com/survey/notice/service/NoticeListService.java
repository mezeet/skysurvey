package com.survey.notice.service;
 
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.survey.controller.ForwardInfo;
import com.survey.controller.Service;
import com.survey.jdbc.JdbcUtil;
import com.survey.notice.dao.NoticeDao;
import com.survey.notice.dao.NoticeDaoProvider;
import com.survey.notice.model.Notice;
import com.survey.notice.model.NoticeListView;

public class NoticeListService implements Service{

	@Override
	public ForwardInfo process(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//전달되는 데이터를 받자
		String searchKey=request.getParameter("searchKey");
		String searchWord=request.getParameter("searchWord");
		if(searchWord!=null)
			searchWord=searchWord.trim();
		//전달받은 데이터 확인
		System.out.println("검색키 : "+searchKey);
		System.out.println("검색단어 : "+searchWord);
		//DB 처리
		NoticeDao dao=NoticeDaoProvider.getInstance().getDao();
		Connection con= null;
		//필요한 변수들은 선언
		//현재 페이지
//		전달 받는 현재페이지
		String currPageStr = request.getParameter("page");
		//처리할 현재 페이지
		int page=1;
		if(currPageStr != null && currPageStr != ""){
			page =Integer.parseInt(currPageStr);
			if(page<1) page =1;
		}
		int totalPage=0;
		int totalRow=0; //전체 글수 : DB
		int rowPerPage=3;
		//현재 페이지 시작글 번호 , 끝번호
		int startRow=0,endRow=0;
		//화면에 페이지 그룹
		int pagePerGroup = 4;
		//현재 페이지가 속해있는 그룹의 시작페이지 ,끝페이지
		int startPage=0,endPage=0;
		try {
			System.out.println("try부분");
			con=JdbcUtil.getConnection();
			//전체 글의 갯수 구하기
			totalRow=dao.selectCount(con, searchKey, searchWord);
			if(totalRow>0)
				totalPage=(totalRow-1)/rowPerPage+1;
			//현재 페이지의 시작과 끝 줄수 구하기
			startRow=(page-1)*rowPerPage+1;
			endRow =startRow+rowPerPage -1;
			
			startPage=(page-1)/pagePerGroup*pagePerGroup+1;
			endPage=startPage+pagePerGroup -1;
			
			if(endPage>totalPage) endPage=totalPage;
			List<Notice> list = dao.list(con, startRow, endRow, searchKey, searchWord);
			
			NoticeListView data=new NoticeListView(
					totalRow, totalPage, startRow, endRow, startPage, endPage,
					endPage, rowPerPage, pagePerGroup, searchKey, searchWord, list);
			
			request.setAttribute("data", data);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JdbcUtil.close(con);
		}
		//진행방식과 진행되는 곳의 정보를 ForwardInfo 저장하는 처리
				ForwardInfo forwardInfo=new ForwardInfo();
				//진행방식 : forward : true
				forwardInfo.setForward(true);
				//진행하는 곳 : /notice/list.jsp
				forwardInfo.setForwardStr("/notice/list.jsp");
				return forwardInfo;
	}

}
