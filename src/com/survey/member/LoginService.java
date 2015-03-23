package com.survey.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.survey.controller.ForwardInfo;
import com.survey.controller.Service;

// 인터페이스 service의 process 메소드를 구현하는 concrete 클래스를 만들고
// 메소드를 구현한다.
public class LoginService implements Service{
	
	//  해당 메소드를 형변환으로 호출하면 서비스 처리 종류 이후에 
	// 메인 페이지에서 불러올 jsp 경로와 이름을 리퀘스트 객체로 넘겨준다.
	public ForwardInfo process (HttpServletRequest request,	HttpServletResponse response)
	throws ServletException, IOException {
		
		ForwardInfo FInfo = new ForwardInfo();
		
		
		
		
		
		
		
		FInfo.setForward(true);
		FInfo.setForwardStr("/service/member/login.jsp");
		
		return FInfo;
	}

}
