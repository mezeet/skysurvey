package com.survey.test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.survey.test.model.AttachedFile;
import com.survey.jdbc.JdbcUtil;
import com.survey.test.model.Test;

public class OracleTestDao extends TestDao{

	// 게시판 쓰기 메소드
	@Override
	public int write(Connection con, Test qna)
		throws SQLException {
		// TODO Auto-generated method stub
		//필요한 객체 선언
		System.out.println("OracleQnaDao.write()");
		// 사용할 객체 선언
		PreparedStatement pstmt = null;
		// 처리
		try{
			//sql 작성
			// board의 내용의 리스트해당항목을 글번호 desc
			String sql=" insert into qna(no,title, "
				+ " content,writer, "
				+ " refNo, ordNo, levNo, parentNo) "
				+ " values(qna_seq.nextval,?,?,?,"
				+ " qna_seq.nextval,1,0,qna_seq.nextval) ";
			//상태
			pstmt = con.prepareStatement(sql);
			// ?에 대한 데이터 셋팅
			pstmt.setString(1, qna.getTitle());
			pstmt.setString(2, qna.getContent());
			pstmt.setString(3, qna.getWriter());
			// 실행
			pstmt.executeUpdate();
			return 1;
		} finally {
			// 처리가 된 후 객체 닫기
			JdbcUtil.close(pstmt);
		}
	}


	@Override
//	파일을 첨부시키는 메소드
	public int writeFile(Connection con, 
		int no, List<AttachedFile> fileList)
		throws SQLException
	{
		System.out.println("OracleBoardDao.writeFile()");
		// 사용할 객체 선언
		PreparedStatement pstmt = null;
		// 처리
		try{
			//sql 작성
			// board의 내용의 리스트해당항목을 글번호 desc
			String sql=" insert into board_file(no,bno, "
				+" originalFile,serverFile) "
				+" values(board_file_seq.nextval,?,?,?) ";
			//상태
			pstmt = con.prepareStatement(sql);
			for(AttachedFile af : fileList){
				// ?에 대한 데이터 셋팅
				pstmt.setInt(1, no);
				pstmt.setString(2, af.getOriginalFile());
				pstmt.setString(3, af.getServerFile());
				// 실행
				pstmt.executeUpdate();
			}
			return 1;
		} finally {
			// 처리가 된 후 객체 닫기
			JdbcUtil.close(pstmt);
		}
	}

	@Override
	// 상속받은 MessageDao에서 추상메소드로 선언한 메소드를
	// 구현(재정의)해 준다. 
	public List<Test> list
	(Connection con, int startRow, int endRow,
			  String searchKeyArr[], String searchWord)
	throws SQLException {
		// TODO Auto-generated method stub
		System.out.println("OracleBoardDao.list()");
		// 사용할 객체 선언
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Test> list = null;
		String searchStr = "";
		if(searchWord != null && !searchWord.equals("")){
			searchStr = " where 1=2 ";
			for(String searchKey: searchKeyArr){
				searchStr += " or " + searchKey + " like ? ";
			}
		}
		// 처리
		try{
			//sql 작성
			// board의 내용의 리스트해당항목을 글번호 desc
			String sql=" select no,title,writer, "
			+" to_char(wdate,'yyyy-mm-dd') wdate, "
			+" target, fileCount from board "
			+searchStr
			+" order by no desc ";
			// rownum을 붙인다.
			sql=" select rownum rnum,no,title,writer, "
			+ " wdate, target, fileCount "
			+ " from ("+sql+") ";
			// rnum중에서 startRow,endRow를 적용시킨다.:where
			sql=" select * from ("+sql+") "
			+ " where rnum between ? and ? ";
			
			System.out.println(sql);
			
			//상태
			pstmt = con.prepareStatement(sql);
			// ?에 대한 데이터 셋팅
			int idx = 1;
			if(searchWord != null && !searchWord.equals(""))
				for(int i=0;i<searchKeyArr.length;i++){
					pstmt.setString(idx++, "%"+searchWord+"%");
				}
			
			pstmt.setInt(idx++, startRow);
			pstmt.setInt(idx++, endRow);
			//실행 select: executeQuery()
			rs=pstmt.executeQuery();
			if(rs!=null){
				list=new ArrayList<Test>();
				while(rs.next()){
//					Board board = new Board();
//					board.setRnum(rs.getInt("rnum"));
//					board.setNo(rs.getInt("no"));
//					board.setTitle(rs.getString("title"));
//					board.setWriter(rs.getString("writer"));
//					board.setWdate(rs.getString("wdate"));
//					board.setTarget(rs.getInt("target"));
//					list.add(board);
					list.add(makeTestFromListResultSet(rs));
				}
			}
			return list;
		} finally {
			// 처리가 된 후 객체 닫기
			JdbcUtil.close(pstmt);JdbcUtil.close(rs);
		}
	}
}
