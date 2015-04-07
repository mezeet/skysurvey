package com.survey.login;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;
import org.javalite.activejdbc.annotations.IdName;

// 오라클 테이블 이름은 대문자만 기록되고,  activeJbcd 는 테이블을 소문자로 읽는다.
// 따라서 테이블명을 대문자로 하는 Oracle 을 위해서 테이블 어노테이션으로
// 대문자 테이블명을 지정해준다.
@Table(value = "MEMBERS")
// activeJdbc 는 기본 pk 명을 id 라고 짓는다.
// 우리는 no 가 기본 테이블 pk 속성 명이므로, 오버라이드 해준다.
@IdName("no")
public class Member  extends Model{
	
}
