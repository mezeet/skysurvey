package com.survey.login;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.javalite.activejdbc.Base;
import org.javalite.activejdbc.LazyList;
import org.javalite.activejdbc.Model;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.Gson;
import com.survey.model.Member;
import com.survey.model.Pointlog;

/**
 * Servlet implementation class Login
 *   로그인 창에서 전송된 아이디와 암호를 확인한 후,
 *   성공할 경우 세션객체에 사용자 정보를 기록 하고 true 를 ajax 로 돌려보낸다.
 *   실패할 경우 아무것도 하지 않고, false 를 ajax 로 돌려보낸다.
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
// 1. 로그인 창에서 전송된 아이디와 암호를 확인한 후,

		// 전송된 폼 값을 가져와서 변수에 담는다.
		String id = request.getParameter("loginid");
		String password = request.getParameter("loginpassword");	
		
		// 직접 드라이버로 연결... 은 지양한다.
		//Base.open("oracle.jdbc.driver.OracleDriver", "jdbc:oracle:thin:@211.183.7.63:1521:orcl", "skysurvey","sky1234");

		// context 로 등록한 jndi 에서 db 연결을 한다. 
		Base.open("java:comp/env/jdbc/OracleDB");

		// ActiveJDBC Member 객체로 해당 아이디와 일치하는 사용자가 있는지 확인한다.
		Member member = Member.findFirst("userid=?",id);
	   // 선택된 사용자 id 와 일치하는 항목을 pointlog 테이블에서 읽어와 목록화 한다. 
		LazyList<Pointlog> pointlogs = member.getAll(Pointlog.class);
		// 해당 사용자의 포인트 내역 중 등록 날짜 순으로 가장 최신인 것을 뽑아서 담는다.
	  Pointlog point = (Pointlog) pointlogs.orderBy("regdate desc").get(0);

	  // 커넥션 닫기
		Base.close();

		System.out.println(point);
		
// 2. 실패할 경우 아무것도 하지 않고, false 를 ajax 로 돌려보낸다.
		
		// 회원 테이블 쿼리의 값이 false 라면 
		if(member.equals(false)){
			
			// AJAX에 nouser 값을 리턴한다.
			String json = "noUser";
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(json); 

		// 회원 아이디는 있지만, 암호가 일치 하지 않으면!!
		}else if(!member.get("password").equals(password)){
			
			// AJAX에 wrongpassword 값을 리턴한다.
			String json = "wrongPassword";
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(json); 
			
// 3. 성공할 경우 세션객체에 사용자 정보를 기록 하고 true 를 ajax 로 돌려보낸다.
			
		// 해당 아이디의 회원이 있고, 암호까지 일치한다면!!!
		}else{

			// 세션 객체에 사용자의 고유번호(id), 사용자 id(userid), 
			// 프로필 작성 완료도(completerate), 포인트(point)
			HttpSession session = request.getSession();
			session.setAttribute("userid",member.get("userid"));
			session.setAttribute("completerate", member.get("completerate"));
			session.setAttribute("point", point.get("curpoint"));
			session.setAttribute("imgsrc", "http://placehold.it/80");
			
			// AJAX 에 isUser 값을 리턴한다.
			String json = "isUser";
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(json);
		}
		
	}
}

