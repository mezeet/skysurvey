package com.survey.test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.survey.controller.ForwardInfo;
import com.survey.controller.Service;

public class TestAjaxRequest implements Service{
	
//  해당 메소드를 형변환으로 호출하면 서비스 처리 종류 이후에 
// 메인 페이지에서 불러올 jsp 경로와 이름을 리퀘스트 객체로 넘겨준다.
public ForwardInfo process (HttpServletRequest request,	HttpServletResponse response)
throws ServletException, IOException {
	
	ForwardInfo FInfo = new ForwardInfo();
	
	// 1. DB 조회 및 request 객체에 담아서 보낼 TestBean 객체 생성
	TestBean tbean = new TestBean();
	
	//  1-1. ajax 로 값이 잘 요청됐는지 method 파라미터를 꺼내서 확인해보기
	String method = request.getParameter("method");
	String inputId = request.getParameter("id");
	String inputPassword = request.getParameter("password");
	System.out.println(method);
	System.out.println(inputId);
	System.out.println(inputPassword);
	
	// 2. DB 처리 -  부분입니다. 이건 뭐 알아서~
	// db 연결 후 TestBean 에다가 값을 Set 해줍니다.
	//  여기서는 수동으로 값을 세팅해 줍시다.
	tbean.setId("scala");
	tbean.setName("스칼라");
	tbean.setPassword("scala");
	tbean.setPoint(2000);
	tbean.setProfileRatio("60%");
	tbean.setUserNo("2");
	
	//  3. 아이디 암호 일치하는지 검사
	// DB 에서 가져온 아이디, 암호가 사용자가 입력한 아이디 암호와 일치 한다면
	if(tbean.getId().equals(inputId) && tbean.getPassword().equals(inputPassword)){
	
		//  사용자가 맞다(true) 값을 설정하고, 상태를 success 로 설정,  암호가 노출되지 않도록 tbean 에 암호를 비웁니다.
		request.setAttribute("isUser",true );
		request.setAttribute("state","success" );
		tbean.setPassword("");
		// 그리고 tbean 을 request 객체에 tbean 이라는 변수에 담습니다. 
		request.setAttribute("tbean", tbean);

		// 추가로 리퀘스트 객체에다가 다른 변수도 담아 봅니다.
		request.setAttribute("thread1","반가워용" );
		request.setAttribute("thread2","햄볶아용" );
		request.setAttribute("thread3","사랑해용" );
	
		// 우리는 리퀘스트 객체를 페이지에 전달해야 하므로, 리퀘스트 객체가 유지되는 페이지 이동방식인 forward 방식을 이용해야 합니다.
		FInfo.setForward(true);
		// 그리고 index.jsp 에서 메인- 좌측 컨텐츠 영역에 보여질 조각 페이지를 main.jsp 로 설정합니다.
		// 이제 index.jsp 와 main.jsp 에서는 tbean 객체와, thread1~3 변수값을 사용할 수 있게 됩니다.
		FInfo.setForwardStr("/service/test/main.jsp");

	// DB에서 가져온 아이디 암호와 사용자가 입력한 아이디 암호가 일치하지 않으면 
	} else{
		
		//  사용자가 아니다 (false) 값을 설정하고 state 를 error 로 설정합니다.
		request.setAttribute("isUser",false );
		request.setAttribute("state","error" );
		
		// 우리는 리퀘스트 객체를 페이지에 전달해야 하므로, 리퀘스트 객체가 유지되는 페이지 이동방식인 forward 방식을 이용해야 합니다.
		FInfo.setForward(true);
	
		//그리고 index.jsp 에서 메인- 좌측 컨텐츠 영역에 보여질 조각 페이지를 main.jsp 로 설정합니다
		// 이제 index.jsp 와 main.jsp isUser, state 변수에 접근가능합니다.
		FInfo.setForwardStr("/service/test/main.jsp");
		
	}
	
	// 이제 위에서 설정한 페이지 이동 경로와 방식을 testRequest 클래스를 호출한 FrontController 에 돌려 줍니다. 
	return FInfo;
}

}