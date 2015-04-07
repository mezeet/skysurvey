package com.survey.test.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.survey.test.dao.TestDao;
import com.survey.test.dao.TestDaoProvider;
import com.survey.controller.ForwardInfo;
import com.survey.controller.Service;

public class TestDeleteProcessService implements Service {

	@Override
	public ForwardInfo process(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("TestDeleteProcessService.process()");
		
		// DB 처리
		TestDao dao 
		= TestDaoProvider.getInstance().getTestDao();
		Connection con = null;
		int startRow = 0, endRow = 0;
		try {
			dao.delete(con, 1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		// 진행방식과 진행되는 곳의 정보를 ForwardInfo 저장하는 처리
		ForwardInfo forwardInfo = new ForwardInfo();
		// 진행방식 : redirect : false
		forwardInfo.setForward(false);
		// 진행하는 곳 : list.do
		forwardInfo.setForwardStr("list.do");
		return forwardInfo;
	}

}
