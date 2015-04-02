/*
 * DB 작업을 하기 위한 기능을 제공하는 DAO 객체
 *  템플릿 메서드 패턴을 사용하여 일부 기능은 추상화하고 서브 콘크리트 클래스에서 구현 및 처리하게 한다.
 */
package com.survey.test.dao;

// DB 접속을 위한 필요 클래스를 임포트
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.survey.jdbc.JdbcUtil;

import java.util.ArrayList;
// 목록, 첨부파일, Test 관련 내용을 담기 위한 Bean 파일 불러오기
import java.util.List;

import com.survey.test.model.AttachedFile;
import com.survey.test.model.Test;

public abstract class TestDao {

// 1. 조건(DBMS 종류) 마다 다르게 처리될 템플릿 메소드를 선언
// 이렇게 하는 이유는 행위(메소드)는 추상적으로 같지만. 실제 구현방식은 다르기 때문이다.
	
	// 템플릿 메서드 - 쓰기, 파일쓰기, 목록얻어오기
	public abstract int write	(Connection con, Test test) throws SQLException;
	public abstract int writeFile	(Connection con, int no, List<AttachedFile> fileList)	throws SQLException;
	public abstract List<Test> list	(Connection con, int startRow, int endRow, String searchKeyArr[], String searchWord)	throws SQLException;
	
// 2. 남은 인터페이스(오퍼레이션 집합)는 DBMS 종류가 달라도 표준 SQL 문으로 처리 가능하므로.
// 아래의 메소드들(오퍼레이션들)은 표준 SQL 문으로 구현한다.
	
	// 특정 번호를 가진 게시글의 값을 Test 빈에 담아 온다.
	public Test view(Connection con, int no) throws SQLException{

		// 상태 준비,
		// 왜 PreparedStatement 사용하나? 
		//SQLInjection 을 막을 수 있도록 물음표 료 지정된 것만 치환하는 기능을 제공하기 때문이다.
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		// 처리 - 외부와의 입/출력 때는 오류의 가능성이 있기에 try-catch 문을 쓴다. 
		try{
			// 처리할 SQL 문 작성
			String sql="select no,title,content,writer, "
					+ " var_char(wdate, 'yyyy-mm-dd') wdate,"
					+ " target, fileCount"
					+ " from board"
					+ " where no=?";

			// 해당 sql 문으로 커넥션 상태를 생성 후 준비한 상태변수에 참조값 넘겨줌
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			//커넥션과 SQL 문을 가진 준비 객체에 쿼리를 처리하고 결과묶음(resultSet) 의 참조값을 준비된 변수에 넘겨준다.
			rs=pstmt.executeQuery();
			
			// 이제 결과묶음이 비어있는지 아닌지를 검사한다.
			if(rs!=null)
				// 결과가 있다면, 결과 값 열을 가리키는 포인터를 한 줄 다음으로 내린다.
				// 이 포인터는 처음에 0번째에 있고, next() 메소드를 호출하면 1씩 증가한다.
				if(rs.next())
					// 이제 해당 포인터가 가리키는 rs 객체를 인자로 넘겨서 하나의 Test bean 객체에 담은 뒤
					// TestDao 를 호출한 곳으로 Test 빈 객체를 반환한다.
					return makeTestFromViewResultSet(rs);

		// try-catch 문이 실행 된 뒤 무조건 실행되는 finally 문
		} finally {
			// JdbsUtil 유틸리티 클래스에 담긴 close 메소드로 커넥션 상태와 결과묶음 객체와 DB 와의 연결을 끊는다.
			// 현재 pstmt 와 rs 는 커넥션 객체의 참조값을 가지고 있기에 참조값을 삭제해서 DB 와 연결을 하지 못하게 마무리하는 것이다.
			JdbcUtil.close(pstmt);JdbcUtil.close(rs);
		}
		
		// try 중 exception 발생했을 경우 호출한 곳에 null 값을 반환한다.
		return null;
	}


	// DB 쿼리 결과 묶음(rs)를 받아서 test bean 객체에 담는 메소드
	//   목록에 사용할 정보만 담는다...
	protected Test makeTestFromResultSet(ResultSet rs)
			throws SQLException {
		Test test = new Test();
		test.setNo(rs.getInt("no"));
		test.setTitle(rs.getString("title"));
		test.setWriter(rs.getString("writer"));
		test.setWdate(rs.getString("wdate"));
		test.setTarget(rs.getInt("target"));
		test.setLevNo(rs.getInt("levNo"));
		test.setFileCount(rs.getInt("fileCount"));
		return test;
	}

	
	// DB 쿼리 결과 묶음(rs)를 받아서 test bean 객체에 담는 메소드
	//  rnum 은 viw에서 필요 없으니 따로 넣는다.
	protected Test makeTestFromListResultSet(ResultSet rs)
			throws SQLException {
			Test test = makeTestFromResultSet(rs);
			// 추가로 rnum만 담는다.
			test.setRnum(rs.getInt("rnum"));
			return test;
	}
	

	// DB 쿼리 결과 묶음(rs)를 받아서 test bean 객체에 담는 메소드
	//  컨텐츠만 내용만 추가한다.
	protected Test makeTestFromViewResultSet(ResultSet rs)
			throws SQLException {
			//Test test = makeFromListResultSet(rs);
			// 추가로 content만 담는다.
			//test.setContent(rs.getString("content"));
			//return test;
		return null;
	}

	// 데이터의 갯수(전체 데이터)를 세는 메소드
	// 검색 키와, 검색 단어를 전달 받는다.
	public int selectCount(Connection con,String searchKeyArr[], String searchWord)
		throws SQLException{
		// 사용할 객체 선언
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		
		// 입력된 검색키와 검색단어에 따라 SQL 문을 동적으로 생성한 뒤 갯수를 조회한다.
		try{
			
			// 생성할 SQL 의 시작부분 생성, test 테이블에서 모든 개수를 세는데,
			String sql="select count(*) from test ";
			
			//  검색열과 검색어 sql 문을 추가해준다.
			// where 1=2 문은 항상 false 라 sql 문이 실행되지 않는다. 이 문을 넣어준 이유는
			// or 검색열 형태를 계속 생성하려고 하는데 where 없이 or 를 넣을 수가 없으니
			// where 의 조건 하나는 항상 false 가 되서 실행이 안되고, 
			//  우리가 동적으로 생성한 조건이 추가되어야만 SQL 문이 실행되기 위해 넣어놓았다.
			
			// where 1=2
			// or 동일 검색열  like "다른 검색어1"
			// or 동일 검색열  like "다른 검색어2"
			// or 동일 검색열  like "다른 검색어3"
			// 식으로 키워드 검색이 가능하다.
			
			// 검색어가 null 이 아니면서 빈칸 "" 도 아니면 검색열과 검색어로 sql 문을 추가.
			
			String searchStr = "";
			if(searchWord != null && !searchWord.equals("")){
				searchStr = " where 1=2 ";
				for(String searchKey: searchKeyArr){
					searchStr += " or " + searchKey + " like ? ";
				}
			}
			sql += searchStr;
			
			// sql 문으로 커넥션을 가진 상태를 준비한다.
			pstmt = con.prepareStatement(sql);
			
			// 대체할 플레이스 홀더(바꾸미)인 물음표의 번호를 초기화 한다.
			int idx=1;
			
			// 검색어가 null 이 아니면서 빈칸 "" 도 아니면 idx 번째 플레이스 홀더를 searchWord 로 바꾼다.  
			if(searchWord != null && !searchWord.equals(""))
				for(int i=0;i<searchKeyArr.length;i++){
					pstmt.setString(idx++, "%"+searchWord+"%");
				}
			
			// 모든 준비가 다 됐으니 쿼리문을 실행한다.
			rs=pstmt.executeQuery();
			
			// 쿼리 결과 묶음이 null 이 아니면
			if(rs!=null)
				// 결과 한 행을 가리키는 포인터를 증가시킨다.
				if(rs.next())
					// 그리고 결과값의 1열의 정수를 읽어서 반환한다. 
					return rs.getInt(1);
			
		} finally {
			// 처리가 된 후 객체를 닫는다. 왜냐면, pstmt 와 rs 는 db 커넥션의 참조값을 가지고 있기 때문이다. 다시 접근하지 못하게 참조값을 끊자.
			JdbcUtil.close(pstmt);JdbcUtil.close(rs);
		}
		
		// try 문 실행 도중 익셉션 발생으로 밖으로 나올 경우 제대로 가져오지 못한 것이므로 0을 반환한다.
		return 0;
	}

//	글 번호 중 최대숫자를 가져오는 메소드
	public int currentNo(Connection con)
			throws SQLException{
			
		  // DB 작업에 필요한 객체준비
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			// 
			try{
				// Test 테이블 no 열에서 최대값 (max) 을 가져온다.
				String sql="select max(no) from test";
				//  sql 문을 가지고 커넥션을 연결시킨 상태준비 객체를 만든다.
				pstmt = con.prepareStatement(sql);
				// 상태 준비 객체에 담긴 sql 문을 실행
				rs=pstmt.executeQuery();
				//  만약 결과값이 null 이 아니라면
				if(rs!=null)
					// 결과값의 한 행을 가리키는 포인터를 0에서 1로 증가시켜 첫 번째 결과행을 가리키도록 한다.
					if(rs.next())
						// 이제 첫번째 행의 1열의 정수값을 가져와서 반환한다.
						return rs.getInt(1);
			} finally {
				// 처리가 된 후 객체 닫기
				JdbcUtil.close(pstmt);JdbcUtil.close(rs);
			}
			
			// try 문 실행 중 exception 발생했다면 정상적으로 값을 가져오지 못한 것이므로 0을 리턴한다.
			return 0;
	}

	// 수정한 내용을 DB 에 갱신한다.
	public int update(Connection conn, Test test)
			throws SQLException {
		// 사용할 객체 선언
				PreparedStatement pstmt = null;
				// 처리
				try{
					//sql 작성
					String sql=" update board set title = ?, content=?, writer=? "
							+ " where no = ? ";
					
					//상태
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, test.getTitle());
					pstmt.setString(2, test.getContent());
					pstmt.setString(3, test.getWriter());
					pstmt.setInt(4,test.getNo());
					//실행 select: executeQuery()
					return pstmt.executeUpdate();
				} finally {
					// 처리가 된 후 객체 닫기
					JdbcUtil.close(pstmt);
				}
	}
	
   // 해당 내용을 삭제한다. 
	public int delete(Connection conn, int no)
			throws SQLException {
		
		return 0;
	}
	
	//	전달 받은 테이블에 컬럼의 숫자를 전달 받은 숫자 만큼 증가 처리 메소드
	public int increaseTarget(Connection con, String table, String colum, int no, int num)
			throws SQLException {
		System.out.println("BoardDao.increaseTarget()");
		// 사용할 객체 선언
		PreparedStatement pstmt = null;
		// 처리
		try{
			//sql 작성
			String sql=" update "+table+" set "+colum+"="+colum+"+"+num
					+ " where no = ? ";
			//상태
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			//실행 select: executeQuery()
			return(pstmt.executeUpdate());
		} finally {
			// 처리가 된 후 객체 닫기
			JdbcUtil.close(pstmt);
		}
	}
	
	
	// 첨부파일 리스트를 가져오는 메소드
	public List<AttachedFile> fileList(Connection con, int no)
			throws SQLException {
		
		// 사용할 객체 선언
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<AttachedFile> list = null;
		boolean createList = false;

		// 처리
		try{
			//sql 작성
			String sql="select no,bno,originalFile,serverFile "
					+ " from board_file "
					+ " where bno=? ";
			//상태
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			//실행 select: executeQuery()
			rs=pstmt.executeQuery();
			if(rs!=null)
				while(rs.next()){
					// 목록 생성을 왜 이렇게 번거롭게 처리하냐면!!! while 문 밖에서 list 생성 시 null 값을 리턴할 수 없어서.
					// 파일이 안들어가면 아예 null 리턴을 해야하는데 내용이 아무것도 없는데 list 객체만 있으면 null 이 아니다.
					if(!createList){
						list = new ArrayList<AttachedFile>();
						createList = true;
					}
					AttachedFile file1 = new AttachedFile();
					file1.setNo(rs.getInt("no"));
					file1.setOriginalFile(rs.getString("originalFile"));
					file1.setServerFile(rs.getString("serverFile"));
					list.add(file1);
				}
//				return list;
		} finally {
			// 처리가 된 후 객체 닫기
			JdbcUtil.close(pstmt);JdbcUtil.close(rs);
		}
		
		// 
		return list;
	}
	
	//	정해진 데이터의 테이블.컬럼을 주어진 수 만큼 감소 처리 메소드
	public int decreaseTarget(Connection con, String table, String colum, int no, int num)
			throws SQLException {
		System.out.println("BoardDao.decreaseTarget()");
		// 사용할 객체 선언
		PreparedStatement pstmt = null;
		// 처리
		try{
			//sql 작성
			String sql=" update "+table+" set "+colum+"="+colum+"-"+num
					+ " where no = ? ";
			//상태
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			//실행 select: executeQuery()
			return(pstmt.executeUpdate());
		} finally {
			// 처리가 된 후 객체 닫기
			JdbcUtil.close(pstmt);
		}
	}

	
	//	정해진 데이터의 테이블에서 삭제 처리 메소드
	public int deleteFileTable(Connection con, String table, int no)
			throws SQLException {
		System.out.println("BoardDao.deleteFileTable()");
		// 사용할 객체 선언
		PreparedStatement pstmt = null;
		// 처리
		try{
			//sql 작성
			String sql=" delete from "+table
					+ " where no = ? ";
			//상태
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			//실행 select: executeQuery()
			return(pstmt.executeUpdate());
		} finally {
			// 처리가 된 후 객체 닫기
			JdbcUtil.close(pstmt);
		}
	}
	
}
