package com.survey.notice.dao;

public class NoticeDaoProvider {
	
	
	//2. 싱클톤을 적용할 클래스를 생성해서 인스턴스로 저장한다.
	public static NoticeDaoProvider instance= new NoticeDaoProvider();
	//3. 생성된 인스터스를 받아가기 위한 getter를 만든다.
	public static NoticeDaoProvider getInstance(){
		return instance;
	}
	//1. 생성자를 private으로 선언해 다른 클래스의 생성 금지
	private NoticeDaoProvider(){}
	
	//사용하고자 하는 모든 dbms의 dao 프로그램을 생성해서 저장해 놓는다.
	private MySQLNoticeDao mysqlDao=new MySQLNoticeDao();
	private OracleNoticeDao oracleDao=new OracleNoticeDao();
	private MSSQLNoticeDao mssqlDao=new MSSQLNoticeDao();
	
	//어떤 dbms를 사용하지를 저장해 놓는 객체 변수 선언
	private String dbms;//oracle 저장된다. :web.xml 참조
	//setter 작성: DaoProviderInit Servlet의 init() 자동호출
	public void setDbms(String dbms) {
		this.dbms =dbms;
	}
	//객체 벼수(인스턴스) dbms에 있는 값으로 사용할 Dao를 넘기기
	public NoticeDao getDao(){
		if(dbms.equals("oracle")){
			System.out.println("return OracleDao");
			return oracleDao;
		}else if(dbms.equals("mysql")){
			return mysqlDao;
		}else if(dbms.equals("mssql")){
			return mssqlDao;
		}else {
			//기본으로 사용할 Dao를 선언
			return oracleDao;
		}
	}
	

}
