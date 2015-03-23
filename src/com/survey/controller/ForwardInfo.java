package com.survey.controller;

public class ForwardInfo {
	
	//	해당 서비스가 처리(process 메소드 호출)된 후 다음 행선지와, 이동 방식을 담는 객체다.
	//	forward 는 포워드 여부다.  처리 후 다른 페이지로 특정 값을 전달하려 할 때 True 로 설정한다.
	//	forwardstr 은 목적하는 페이지 혹은 URL 을 담는다.
	//	실제 사용자는 *.do 형태로 URL 을 요청하고, 처리 후에 보여줄 페이지는 *.jsp 다.

	// forward가 true : forward, false : redirect한다.
	// if(obj.isForward()){
	//	forward 처리
	// } else {
	//  redirect 처리
	// }
	
	private boolean forward;
	private String forwardStr;
	
	public boolean isForward() {
		return forward;
	}
	public void setForward(boolean forward) {
		this.forward = forward;
	}
	public String getForwardStr() {
		return forwardStr;
	}
	public void setForwardStr(String forwardStr) {
		this.forwardStr = forwardStr;
	}
}
