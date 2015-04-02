package com.survey.test.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.survey.test.dao.TestDao;
import com.survey.test.dao.TestDaoProvider;
import com.survey.test.model.Test;
import com.survey.controller.ForwardInfo;
import com.survey.controller.Service;
import com.survey.jdbc.JdbcUtil;

public class TestViewService implements Service {

	@Override
	public ForwardInfo process(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("TestViewService.process()");
		
		// DB 처리
		TestDao dao 
		= TestDaoProvider.getInstance().getTestDao();
		Connection con = null;
		String noStr = request.getParameter("no");
		String pageStr = request.getParameter("page");
//		System.out.println("TestViewService.process().noStr:"+noStr);
		if(noStr==null || noStr.equals("")) return null;
		if(pageStr==null || pageStr.equals("")) return null;
		int no = Integer.parseInt(noStr);
		int page = Integer.parseInt(pageStr);
//		화면에 보여질 파일명
		String viewFile = null;
		try {
			con=JdbcUtil.getConnection();
			con.setAutoCommit(false);
			// 조회수 1 증가
			dao.increaseTarget(con, "board", "target", no, 1);
//			increaseTarget(Connection con, String table, String colum, int no, int num)

			Test test = dao.view(con, no);
			if(test != null){
				if(test.getFileCount()>0){
					test.setFileList(dao.fileList(con, no));
//					System.out.println("TestViewService.process().test.fileList.size:"+test.getFileList().size());
				}
				request.setAttribute("test", test);
				request.setAttribute("page", page);
				viewFile="/test/view.jsp";
			}
//			else viewFile="/error/testList.jsp";
			con.commit();
			con.setAutoCommit(true);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} finally {
			JdbcUtil.close(con);
		}
			
		// 진행방식과 진행되는 곳의 정보를 ForwardInfo 저장하는 처리
		ForwardInfo forwardInfo = new ForwardInfo();
		// 진행방식 : forward : true
		forwardInfo.setForward(true);
		// 진행하는 곳 : /test/list.jsp
		forwardInfo.setForwardStr(viewFile);
		return forwardInfo;
	}

}
