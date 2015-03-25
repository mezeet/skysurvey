package com.survey.test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * Servlet implementation class TestAjax
 */
@WebServlet("/TestAjax")
public class TestAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


 public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	  // 1. DB 조회 및 request 객체에 담아서 보낼 TestBean 객체 생성
		TestBean tbean = new TestBean();
		
		//  1-1. ajax 로 값이 잘 요청됐는지 method 파라미터를 꺼내서 확인해보기
		String method = request.getParameter("method");
		String inputId = request.getParameter("inputId");
		String inputPassword = request.getParameter("inputPassword");
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
			tbean.setIsUser(true);
			tbean.setState("success");
			tbean.setPassword("");
			// 그리고 tbean 을 request 객체에 tbean 이라는 변수에 담습니다. 
			request.setAttribute("tbean", tbean);

			
				// tbean 객체를 ["키" : "값","키" : "값","키" : "값"...] 형태의 json 형태로 변경합니다.
			  String json = new Gson().toJson(tbean);

			  	// 정말 그런지 콘솔에 찍어 보죠~
			  System.out.println(json);
				// {"isUser":true,"id":"","userNo":"","password":"","name":"","point":0,"profileRatio":"","state":"success"}
			
		
			  // response(브라우저로 넘어가고 처리되어 화면에 보일 내용이 담긴 객체)를 한글처리 한 후  json 으로 바꾼 tbean 값을 담아서 넘깁니다.
			  response.setContentType("application/json");
			  response.setCharacterEncoding("UTF-8");
			  response.getWriter().write(json);
			  


		// DB에서 가져온 아이디 암호와 사용자가 입력한 아이디 암호가 일치하지 않으면 
		} else{
			
			//  사용자가 아니다 (false) 값을 설정하고 state 를 error 로 설정합니다.
			tbean.setIsUser(false);
			tbean.setState("warning");
			tbean.setPassword("");
			
			// 그리고 클라이언트에서 사용자의 정보를 보지 못하도록 tbean 에서 사용자 정보를 지워줍니다.
			tbean.setId("");
			tbean.setName("");
			tbean.setPassword("");
			tbean.setPoint(0);
			tbean.setProfileRatio("");
			tbean.setUserNo("");
			
			// tbean 객체를 ["키" : "값","키" : "값","키" : "값"...] 형태의 json 형태로 변경합니다.
		  String json = new Gson().toJson(tbean);

		  	// 정말 그런지 콘솔에 찍어 보죠~
		  System.out.println(json);
			// {"isUser":true,"id":"","userNo":"","password":"","name":"","point":0,"profileRatio":"","state":"success"}
		  
		  // response(브라우저로 넘어가고 처리되어 화면에 보일 내용이 담긴 객체)를 한글처리 한 후  json 으로 바꾼 tbean 값을 담아서 넘깁니다.
		  response.setContentType("application/json");
		  response.setCharacterEncoding("UTF-8");
		  response.getWriter().write(json);


			
		}

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request,response);
	}

}
