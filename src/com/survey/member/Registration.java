package com.survey.member;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
 *   회원가입 폼에서 전송된 정보를 확인한 후,
 *   멤버 객체에 해당 정보를 추가한다.
 *   성공할 경우 세션객체에 사용자 정보를 기록 하고 true 를 ajax 로 돌려보낸다.
 *   실패할 경우 아무것도 하지 않고, false 를 ajax 로 돌려보낸다.
 */
@WebServlet("/Registraion")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
// 1. 회원가입 폼에서 전송된 아이디와 암호를 확인한 후,

		// 전송된 폼 값을 가져와서 변수에 담는다. 한꺼번에 가져오려고 Map 사용.
		Map<String, String[]> map = request.getParameterMap();
		
		// 값 확인, 인풋은 하나의 값만 가지므로, map.get(key)[0] 인덱스만 검사!
		List<String> keys = new ArrayList<String>(map.keySet());
		
		for(String key:keys){
				System.out.println(""+key+":"+map.get(key)[0]);
		}
		
// 2. 멤버 객체에 해당 정보를 추가한다.
		
		//  직접 드라이버로 연결... 은 지양한다.
		// Base.open("oracle.jdbc.driver.OracleDriver", "jdbc:oracle:thin:@211.183.7.63:1521:orcl", "skysurvey","sky1234");

		// context 로 등록한 jndi 에서 db 연결을 한다. 
		Base.open("java:comp/env/jdbc/OracleDB");

        // 새 멤버 객체를 생성한다.
		Member member = new Member();
		
		// 맵으로 받은 파라미터 여러개를 for 문으로 멤버 객체에 넣는다
		// 이 것이 가능한 이유는 각 input 의 name 값이 테이블에 속성(열) 이름과 같게 맞췄기 떄문이다.
		for(String key:keys){
			
			if(!key.equals("postno"))
				member.set(key,map.get(key)[0]);
		}
		
		// 파라미터로 받지 않는 세부 정보값을 설정해 준다.
	   member.set("tel",0);
	   member.set("hp",0);
	   member.set("grade_id",2);
	   member.set("graduation_id",1);
	   member.set("industrie_id",1);
		 member.set("income_id",1);
		 member.set("isdecisionmaker",1);
		 member.set("cohabitant_id",1);
		 member.set("under18_id",1);
		 member.set("gu_id",1);
		 member.set("sido_id",1);
		 member.set("detailaddress","무응답");
		 member.set("completerate",50);
	   
		// 추가된 값들을 DB 에 적용한다.
		member.save();
		
		Base.close();
//
//		System.out.println(point);
//		
//// 2. 실패할 경우 아무것도 하지 않고, false 를 ajax 로 돌려보낸다.
//		
//		// 회원 테이블 쿼리의 값이 false 라면 
//		if(member.equals(false)){
//			
//			// AJAX에 nouser 값을 리턴한다.
//			String json = "noUser";
//			response.setContentType("application/json");
//			response.setCharacterEncoding("UTF-8");
//			response.getWriter().write(json); 
//
//		// 회원 아이디는 있지만, 암호가 일치 하지 않으면!!
//		}else if(!member.get("password").equals(password)){
//			
//			// AJAX에 wrongpassword 값을 리턴한다.
//			String json = "wrongPassword";
//			response.setContentType("application/json");
//			response.setCharacterEncoding("UTF-8");
//			response.getWriter().write(json); 
//			
//// 3. 성공할 경우 세션객체에 사용자 정보를 기록 하고 true 를 ajax 로 돌려보낸다.
//			
//		// 해당 아이디의 회원이 있고, 암호까지 일치한다면!!!
//		}else{
//
//			// 세션 객체에 사용자의 고유번호(id), 사용자 id(userid), 
//			// 프로필 작성 완료도(completerate), 포인트(point)
//			HttpSession session = request.getSession();
//			session.setAttribute("userid",member.get("userid"));
//			session.setAttribute("completerate", member.get("completerate"));
//			session.setAttribute("point", point.get("curpoint"));
//			session.setAttribute("imgsrc", "http://placehold.it/80");
//			
//			// AJAX 에 isUser 값을 리턴한다.
//			String json = "isUser";
//			response.setContentType("application/json");
//			response.setCharacterEncoding("UTF-8");
//			response.getWriter().write(json);
//		}
		
	}
}

