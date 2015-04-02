/*
 * Test 서비스에서 사용할 적절한 Dao 를 제공하는 클래스 생성
 *   각 Dao는 템플릿 메소드 패턴으로 상위 템플릿 메서드를 구현하는 콘크리트 클래스다.
 */
package com.survey.test.dao;

public class TestDaoProvider {

// 싱글턴 패턴 
	
	// 1. 정적으로 자신의 인스턴스를 생성하고 
	private static TestDaoProvider instance
	= new TestDaoProvider();

	//2. 생성자를 private 으로 선언해 다른 클래스에서 추가 인스턴스 생성 금지
	private TestDaoProvider(){}
	
	//3. 외부에서 생성한 인스턴스에 접근가능 하게  만들기  정적인  getter 메소드를 만든다.
	public static TestDaoProvider getInstance(){
		return instance;
	}

// 조건(dbms)에 맞는 Dao 인스턴스를 반환하기 위한 준비
	
	// dbms 별로 
//	private MySQLTestDao mysqlDao 
//	= new MySQLTestDao();
	private OracleTestDao oracleDao 
	= new OracleTestDao();
//	private MSSQLTestDao mssqlDao 
//	= new MSSQLTestDao();
	
	// 어떤 dbms를 사용하지를 저장해 놓는 멤버 변수 및 외부에서 값을 주입하기 위한 메소드 선언
	private String dbms;//oracle 저장된다. :web.xml참조
	// setter 작성 : DaoProviderInit Servlet의 init() 자동 호출
	public void setDbms(String dbms){
		this.dbms = dbms;
	}
	
	// 객체 변수(인스턴스) dbms에 있는 값으로 사용할 Dao를 넘기기
	public TestDao getTestDao(){
//		System.out.println
//		("MessageDaoProvider.getMessageDao()");
		if(dbms.equals("oracle")){
			System.out.println("return OracleDao");
			return oracleDao;
//		} else if(dbms.equals("mysql")){
//			return mysqlDao;
//		} else if(dbms.equals("mssql")){
//			return mssqlDao;
		} else {
			// 기본으로 사용할 Dao를 선언
			return oracleDao;
		}
		
	}
}
