package com.survey.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FrontController
 */

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//	키-값 형태의 값(혹은 객체)를 목록으로 가지기 위해서 Map 컬렉션을 생성
	private Map<String, Service> serviceMap
	= new HashMap<String, Service>();

	// configFile 로부터 url 과 내부 클래스 정보를 넘겨받아 객체를 생성한 후 Map 컬렉션에 담기
	public void init() throws ServletException {
		String configFile = getInitParameter("configFile");
		System.out.println(configFile);
		Properties prop = new Properties();
		FileInputStream fis = null;
		try {
			String configFilePath
			= getServletContext().getRealPath(configFile);
			fis = new FileInputStream(configFilePath);
			prop.load(fis);
		} catch (IOException e) {
			throw new ServletException(e);
		} finally {
			if (fis != null) {
				try {
					fis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			} 
		} 
		Iterator<Object> keyIter = prop.keySet().iterator();
		while (keyIter.hasNext()) {
			String command = (String) keyIter.next();
			String serviceClassName 
			= prop.getProperty(command);
			try {
				Class<?> serviceClass
				= Class.forName(serviceClassName);
				Service serviceInstance 
				= (Service) serviceClass.newInstance();
				serviceMap.put(command, serviceInstance);
			} catch (ClassNotFoundException | InstantiationException
					| IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException {

	// 0. 한글 처리
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
	// 1. 입력받은 URL 에 맞는 서비스를 실행하고 보여줄 페이지와 보여주는 방식을 반환 받는다. 
		System.out.println("프론트 컨트롤러에 서비스 메소드 실행");
		
		String command = request.getServletPath();
		// 사용자가 요청한 주소 중 제일 마지막 /페이지명.do 글자를 추출한다.
		System.out.println(command);
		
		Service service = serviceMap.get(command);
		// 서비스 인터페이스로 구체적인 서비스 클래스를 형변환 한다.
		
		ForwardInfo forwardInfo
		= service.process(request, response);
		// 형변환된 서비스 클래스 process 메소드 실행 후 ForwardInfo 를 반환받는다.
		System.out.println("FrontController.service():처리끝");
		
		System.out.println("진행방식:forward?"
		+forwardInfo.isForward());
		System.out.println("진행장소:"
		+forwardInfo.getForwardStr());

	// 2.  템플릿 페이지 index.jsp 로 페이지 이동(포워드 혹은 리다이렉트) 하면서
	//   서비스로부터 반환 받은 ForwardInfo 값을 넘겨준다. 
		
		request.setAttribute("main", forwardInfo.getForwardStr());
		// request 객체에 main 이라는 속성을 선언하고 인클루드할 페이지 정보를 넘겨준다.
		
		if(forwardInfo.isForward()){
			RequestDispatcher di
			= request.getRequestDispatcher("/index.jsp");
			di.forward(request, response);
		} else {
			response.sendRedirect("/index.jsp");
		}
		
	}

}
