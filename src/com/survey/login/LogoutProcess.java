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
 *  로그아웃 요청을 처리한다.
 *  세션에 있는 모든 정보를 지우고
 *  세션을 초기화 하고
 *  관련 자료를 조회하고,
 *  포워드 방식으로 보내준다.
 */
public class LogoutProcess implements Service{
		
	//  해당 메소드를 형변환으로 호출하면 서비스 처리 종류 이후에 
	// 메인 페이지에서 불러올 jsp 경로와 이름을 리퀘스트 객체로 넘겨준다.
	public ForwardInfo process (HttpServletRequest request,	HttpServletResponse response)
	throws ServletException, IOException {
		
		// 포워드 여부/위치 를 담고 있는 객체 생성
		ForwardInfo FInfo = new ForwardInfo();
		// 기본 포워드 방식을 사용 함으로, 목적지는 main.jsp 로 설정
		FInfo.setForward(true);
		FInfo.setForwardStr("/service/main/main.jsp");
		
// 1.  세션에 있는 모든 정보를 지우고

		// 세션객체를 받아오고 기본 로그인 상태를 false 로 한다.
		HttpSession session = request.getSession();
		Boolean isLogin = false;
		session.removeAttribute("userid");
		session.removeAttribute("id");
		session.removeAttribute("imgsrc");
		session.removeAttribute("completerate");
		
// 2. 세션을 부적합화 (초기화) 하고 isLogin 을 false 로 설정한다.
		session.invalidate();
		// isLogin = true; 위에서 이미 되어있다.
	
// 3. 관련 자료를 조회하고,
		
		// 2-2. 공지사항과 서베이 목록을 최근 것 5개씩 가져온다.
	
		// AcriveJDBC 객체와 db 와 커넥션 참조값을 연결한다.
		//Base.open("oracle.jdbc.driver.OracleDriver", "jdbc:oracle:thin:@211.183.7.63:1521:orcl", "skysurvey","sky1234");
		// context 로 등록한 jndi 에서 
		Base.open("java:comp/env/jdbc/OracleDB");
		
		// 자료를 담을 모델 객체를 생성하고 
		// 최근 날짜로 5개의 공지글을 담아온다.
		LazyList<Notice> notices = Notice.where("1=1").orderBy("wdate desc").limit(5);
	
		// 서베이 목록을 중 날짜 내림차순 정렬 목록 1 번부터 5개를 가져와서 목록에 담는다.
		// LazyList<SurveyList> surveylist = SurveyList..where("1=1").offset(1).limit(5).rderBy("wdate desc");
		List map = notices.toMaps();
		
		// 연결을 닫는다. = 커넥션 참조값 제거해서 ActiveJDBC 객체가 db 접근 못하게 한다.
		Base.close();
		
// 4. 포워드 방식으로 메인 페이지로 이동한다.

		// toMaps() 으로 보내면 JSTL 에서 그냥 쓸 수 있다.
		// list 는 toMaps 로, 그냥 객체는 toMap 으로.
		//  안하면 notices 객체는 get("id") 형태밖에 없어서 getID() 를 쓰는 JSTL 은 먹히지 않는다. 
		request.setAttribute("notices",map);
			
		// 로그인 정보를 리퀘스트 객체에 넣는다.
		request.setAttribute("isUser", isLogin);
		
		// 이제 위에서 설정한 페이지 이동 경로와 방식을 testRequest 클래스를 호출한 FrontController 에 돌려 줍니다. 
		return FInfo;
	}

}
