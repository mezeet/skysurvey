package com.survey.test.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.javalite.activejdbc.Base;
import org.javalite.activejdbc.LazyList;

import com.survey.controller.ForwardInfo;
import com.survey.controller.Service;
import com.survey.login.Address;
import com.survey.login.Member;

// 인터페이스 service의 process 메소드를 구현하는 concrete 클래스를 만들고
// 메소드 처리내용을 구현한다.
public class TestRequest implements Service{
		
	//  해당 메소드를 형변환으로 호출하면 서비스 처리 종류 이후에 
	// 메인 페이지에서 불러올 jsp 경로와 이름을 리퀘스트 객체로 넘겨준다.
	public ForwardInfo process (HttpServletRequest request,	HttpServletResponse response)
	throws ServletException, IOException {
		
		ForwardInfo FInfo = new ForwardInfo();
		
		// 1. DB 조회 및 request 객체에 담아서 보낼 TestBean 객체 생성
		TestBean tbean = new TestBean();
		
		//  1-1. ajax 로 값이 잘 요청됐는지 method 파라미터를 꺼내서 확인해보기
		String id = request.getParameter("inputId");
		String password = request.getParameter("inputPassword");

		System.out.println(id);
		System.out.println(password);
		
		// 2. DB 처리 -  부분입니다. 이건 뭐 알아서~
		// db 연결 후 TestBean 에다가 값을 Set 해줍니다.
		//  여기서는 수동으로 값을 세팅해 줍시다.
		tbean.setId("scala");
		tbean.setName("스칼라");
		tbean.setPassword("scala");
		tbean.setPoint(2000);
		tbean.setProfileRatio("60%");
		tbean.setUserNo("2");
		
		//Base.open("oracle.jdbc.driver.OracleDriver", "jdbc:oracle:thin:@211.183.7.63:1521:orcl", "skysurvey","sky1234");
		// context 로 등록한 jndi 에서 
		Base.open("java:comp/env/jdbc/OracleDB");

		// 입력한 id 와 매칭되는 id 가 있는지 검색해서
		// 없으면 false 리턴
		Member m = Member.findFirst("userid=?",id);
		Address address = Address.findFirst("member_id=?",2);
		List<Address> a = m.get(Address.class,"member_id=?", m.get("no"));
		System.out.println(address);
		System.out.println(m);
		System.out.println(a);
		System.out.println(a.get(0));
		a.get(0).set("detail","세뿡세뿡").save();
		System.out.println(a.get(0));
		Address ad = new Address();
		ad.set("no",3);
		ad.set("sido",2);
		ad.set("detail","몰라썅");
		ad.set("postno","222-787");
		ad.set("member_id","1");
		ad.saveIt();
		
		// 커넥션 닫기
		Base.close();
		
		//  3. 아이디 암호 일치하는지 검사
		// DB 에서 가져온 아이디, 암호가 사용자가 입력한 아이디 암호와 일치 한다면
		if(m.get("userid").equals(id) && m.get("password").equals(password)){
		
			//  사용자가 맞다(true) 값을 설정하고, 상태를 success 로 설정,  암호가 노출되지 않도록 tbean 에 암호를 비웁니다.
			request.setAttribute("isUser",true );
			request.setAttribute("state","success" );
			// toMap() 으로 보내면 JSTL 에서 그냥 쓸 수 있다.
			//  안하면 m 객체는 get("id") 형태밖에 없어서 getID() 를 쓰는 JSTL 은 먹히지 않는다. 
			request.setAttribute("member",m.toMap() );
			request.setAttribute("address",address.toMap());
			tbean.setPassword("");
			// 그리고 tbean 을 request 객체에 tbean 이라는 변수에 담습니다. 
			request.setAttribute("tbean", tbean);
	
			// 추가로 리퀘스트 객체에다가 다른 변수도 담아 봅니다.
			request.setAttribute("thread1","반가워용" );
			request.setAttribute("thread2","햄볶아용" );
			request.setAttribute("thread3","사랑사랑" );
		
			// 우리는 리퀘스트 객체를 페이지에 전달해야 하므로, 리퀘스트 객체가 유지되는 페이지 이동방식인 forward 방식을 이용해야 합니다.
			FInfo.setForward(true);
			// 그리고 index.jsp 에서 메인- 좌측 컨텐츠 영역에 보여질 조각 페이지를 main.jsp 로 설정합니다.
			// 이제 index.jsp 와 main.jsp 에서는 tbean 객체와, thread1~3 변수값을 사용할 수 있게 됩니다.
			FInfo.setForwardStr("/service/test/main.jsp");

		// DB에서 가져온 아이디 암호와 사용자가 입력한 아이디 암호가 일치하지 않으면 
		} else{
			
			//  사용자가 아니다 (false) 값을 설정하고 state 를 error 로 설정합니다.
			request.setAttribute("isUser",false );
			
			
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
