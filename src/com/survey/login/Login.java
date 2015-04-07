package com.survey.login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.javalite.activejdbc.Base;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.Gson;
import com.survey.jdbc.JdbcUtil;
import com.survey.test.model.Member;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		
		Gson gson = new Gson();
		Boolean isUser=false;
		
		String id = request.getParameter("loginid");
		String password = request.getParameter("loginpassword");
		
		System.out.println(id);
	
		// Datasource 로부터 커넥션을 하나 연다.
		Base.open("oracle.jdbc.driver.OracleDriver", "jdbc:oracle:thin:@211.183.7.63:1521:orcl", "skysurvey","sky1234");
		  
  
 
		
		// 입력한 id 와 매칭되는 id 가 있는지 검색해서
		// 없으면 false 리턴
		Member m = Member.findFirst("id = ?", id);
		
		System.out.println(m);
		// 커넥션 닫기
		Base.close();
		
		// 만약 m 값이 false.. 즉 폼에 입력한 id 값과 일치하는 id 가 테이블에 없으면
		if(m.equals(false)){
			// isUser 값을 초기 값인 false 로 그대로 AJAX 리턴한다.
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(gson.toJson(isUser)); 
		// m 값이 false 가 아니면. 즉 폼에 입력한 id 값과 일치하는 id가 테이블에 있으면.
		}else{
			// isUser 값을 true 로 수정한 뒤 AJAX 에 리턴한다.
			isUser=true;
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(gson.toJson(isUser));
		}
		
		
		
		

			
			 
		
				
		
		
		
		

		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			process(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			process(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
