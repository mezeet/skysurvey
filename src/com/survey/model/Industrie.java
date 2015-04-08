package com.survey.model;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;
import org.javalite.activejdbc.annotations.IdName;
import org.javalite.activejdbc.annotations.BelongsTo;

// 오라클 테이블 이름은 대문자만 기록되고,  activeJbcd 는 테이블을 소문자로 읽는다.
// 따라서 테이블명을 대문자로 하는 Oracle 을 위해서 테이블 어노테이션으로
// 대문자 테이블명을 지정해준다.
@Table(value = "INDUSTRIES")

public class Industrie  extends Model{
	
}
