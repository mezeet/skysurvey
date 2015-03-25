package com.survey.test;

public class TestBean {

	/*
	 * 로그인
	 * isSuccess => 성공이면 True 실패면 False 
	 * id => 한 유저의 id
	 * userNo => 성공한 유저의 고유번호(member 테이블 no 열)
	 * password =>  성공한 유저의 암호
	 * name => 성공한 유저의 이름
	 * point => 성공한 유저의 현재 포인트(pointlog 테이블 curPoint 열)
	 */
	private Boolean isUser;
	private String id;
	private String userNo;
	private String password;
	private String name;
	private int point;
	private String profileRatio;
	private String state;
	
	
	public Boolean getIsUser() {
		return isUser;
	}
	public void setIsUser(Boolean isUser) {
		this.isUser = isUser;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getProfileRatio() {
		return profileRatio;
	}
	public void setProfileRatio(String profileRatio) {
		this.profileRatio = profileRatio;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
	
}
