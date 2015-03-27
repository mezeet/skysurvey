package com.survey.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.survey.controller.ForwardInfo;
import com.survey.controller.Service;
import com.survey.test.TestBean;

// 인터페이스 service의 process 메소드를 구현하는 concrete 클래스를 만들고
// 메소드를 구현한다.
public class LoginProcessService implements Service{
		
	//  해당 메소드를 형변환으로 호출하면 서비스 처리 종류 이후에 
	// 메인 페이지에서 불러올 jsp 경로와 이름을 리퀘스트 객체로 넘겨준다.
	public ForwardInfo process (HttpServletRequest request,	HttpServletResponse response)
	throws ServletException, IOException {
		
		ForwardInfo FInfo = new ForwardInfo();
		
		// 1. DB 조회 및 request 객체에 담아서 보낼 TestBean 객체 생성
		TestBean tbean = new TestBean();
		
		
		
		String method = request.getParameter("method");
		
		
		// 2. DB 처리 -  부분입니다. 이건 뭐 알아서~
		// db 연결 후 TestBean 에다가 값을 Set 해줍니다.
		//  여기서는 수동으로 값을 세팅해 줍시다.
		tbean.setId("scala");
		tbean.setName("스칼라");
		tbean.setPassword("scala");
		tbean.setPoint(2000);
		tbean.setProfileRatio("60%");
		tbean.setUserNo("");
		
		
		
		
		
		// Ajax 인지, 아닌지 전송된 method 검사합니다.
		//  
		if(method.equals("ajax")){
		
			
			
			 
			request.setAttribute("tbean", tbean);

			request.setAttribute("thread1","안뇽하세용" );
			request.setAttribute("thread2","반가워용" );
			request.setAttribute("thread3","햄볶아용" );
			
			
			
		}else{
			
		}
		
		
		
		
		
				
		
		FInfo.setForward(true);
		FInfo.setForwardStr("/service/main/main.jsp");
		
		return FInfo;
	}

}
