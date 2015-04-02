package com.survey.notice.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.survey.notice.model.AttachedFile;
import com.survey.notice.model.Notice;

public abstract class NoticeDao {
	//공통이 아닌 메소드를 추상 메소드로 선언
	public abstract int write(Connection con, Notice notice) throws SQLException;
	public abstract int writerFile
	(Connection con, int no, List<AttachedFile> fileList) throws SQLException;
	public abstract List<Notice> list
	(Connection con, int startRow, int endRow,
			String searchKey,String searchWord) throws SQLException;
	//공통으로 사용되는 (동일한 코드) 메소드를 구현한다.
	//데이터의 갯수(전체데이터)를 세는 메소드
	public int selectCount(Connection con , String searchKey,String searchWord)
	throws SQLException{
		//사용할 객체 선언 
		return 0;	
	}
	//Message(bean)에 rs에 있는 데이터를 담는다. List용 메소드
	protected Object makeFromListResultSet(ResultSet rs) throws SQLException {
		Notice notice =new Notice();
		notice.setRnum(rs.getInt("rnum"));
		notice.setNo(rs.getInt("no"));
		notice.setTitle(rs.getString("title"));
		notice.setWdate(rs.getString("wdate"));
		notice.setTarget(rs.getInt("target"));
		notice.setLevNo(rs.getInt("levNo"));
		return notice;
		
	}
}
