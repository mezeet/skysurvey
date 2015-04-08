package com.survey.login;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.javalite.activejdbc.Base;
import org.javalite.activejdbc.LazyList;

import com.survey.controller.ForwardInfo;
import com.survey.controller.Service;
import com.survey.model.Cohabitant;
import com.survey.model.Member;
import com.survey.model.Notice;

/**
 *  메인 화면을 처리한다.
 *  세션 객체에서 userid 를 뒤져서 로그인 여부를 확인하고
 *  로그인 여부와, 여부에 따라 필요한 정보를 DB에서 가져와서
 *  리퀘스트 객체에 담아 forward 방식으로 mail.jsp 에 보낸다.
 */
public class LoginProcess implements Service{
		
	//  해당 메소드를 형변환으로 호출하면 서비스 처리 종류 이후에 
	// 메인 페이지에서 불러올 jsp 경로와 이름을 리퀘스트 객체로 넘겨준다.
	public ForwardInfo process (HttpServletRequest request,	HttpServletResponse response)
	throws ServletException, IOException {
		
		// 포워드 여부/위치 를 담고 있는 객체 생성
		ForwardInfo FInfo = new ForwardInfo();
		// 기본 포워드 방식을 사용 안함으로, 목적지는 main.jsp 로 설정
		FInfo.setForward(false);
		FInfo.setForwardStr("/service/test/main.jsp");
		
// 1. 세션 객체에서 userid 를 뒤져서 로그인 여부를 확인하고

		// 세션객체를 받아오고 기본 로그인 상태를 false 로 한다.
		HttpSession session = request.getSession();
		Boolean isLogin = false;
		String userid = (String)session.getAttribute("userid");
		

// 2. 로그인 여부와, 여부에 따라 필요한 정보를 DB에서 가져와서
	
		// 만약 userid가 뭔가 들어가 있고, 내용물도 있다면
		if(userid!=null && userid!="" ){
			// 로그인 상태를 true 로 바꾼다.
			isLogin = true;

			//Base.open("oracle.jdbc.driver.OracleDriver", "jdbc:oracle:thin:@211.183.7.63:1521:orcl", "skysurvey","sky1234");
			// context 로 등록한 jndi 에서 
			Base.open("java:comp/env/jdbc/OracleDB");
			
			// 자료를 담을 모델 객체를 생성하고 

			// 최근 날짜로 5개의 공지글을 담아온다.
			LazyList<Notice> notices = Notice.where("1=1").orderBy("wdate desc").limit(5);

			// 서베이 목록을 중 날짜 내림차순 정렬 목록 1 번부터 5개를 가져와서 목록에 담는다.
			// LazyList<SurveyList> surveylist = SurveyList..where("1=1").offset(1).limit(5).rderBy("wdate desc");


			
//3. 리퀘스트 객체에 담아 forward 방식으로 mail.jsp 에 보낸다.
			
			// toMaps() 으로 보내면 JSTL 에서 그냥 쓸 수 있다.
			// list sms toMaps 로, 그냥 객체는 toMap 으로.
			//  안하면 notices 객체는 get("id") 형태밖에 없어서 getID() 를 쓰는 JSTL 은 먹히지 않는다. 
			request.setAttribute("notices",notices.toMaps() );
			// 커넥션 닫기
			Base.close();
			// 우리는 리퀘스트 객체를 페이지에 전달해야 하므로, 리퀘스트 객체가 유지되는 페이지 이동방식인 forward 방식을 이용해야 합니다.
			FInfo.setForward(true);
		}
		
		// 로그인 정보를 리퀘스트 객체에 넣는다.
		request.setAttribute("isUser", isLogin);
		// 이제 위에서 설정한 페이지 이동 경로와 방식을 testRequest 클래스를 호출한 FrontController 에 돌려 줍니다. 
		return FInfo;
	}

}
