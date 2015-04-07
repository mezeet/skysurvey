package com.survey.notice.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.survey.jdbc.JdbcUtil;
import com.survey.notice.model.AttachedFile;
import com.survey.notice.model.Notice;

public class OracleNoticeDao extends NoticeDao{

	@Override
	public int write(Connection con, Notice notice) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int writerFile(Connection con, int no, List<AttachedFile> fileList)
			throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Notice> list(Connection con, int startRow, int endRow,
			String searchKey, String searchWord) throws SQLException {
		System.out.println("OracleNoticeDao.list()");
		//사용할 객체 선언
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		List<Notice> list = null;
		try{
		String sql=" select no,title,writer, "
				+ " to_char(wdate,'yyyy-mm-dd') wdate, "
				+ " target, levNo from notice ";
		//검색에 대한 처리 만들기
		if(searchWord!=null && !searchWord.equals("")){
			sql += " where " + searchKey + " like ? ";
		}
		//질문답변형 정렬 : 관련글, 순서
		sql +=" order by refNo desc, ordNo ";
		//rownum을 붙인다.
		sql=" select rnum,no,title, "
				+ " wdate, target, levNo from("+sql+") ";
		//rnum 중에서 startRow,endRow를 적용시킨다. : where
		sql=" select * from ("+sql+") where rnum between ? and ? ";
		//상태
		pstmt=con.prepareStatement(sql);
		//?에 대한 데이터 셋팅
		int idx=1;
		//검색을 위한 데이터 셋팅
		if(searchWord!= null && !searchWord.equals("")){
			pstmt.setString(idx++, "%"+searchWord+"%");;
		}
		pstmt.setInt(idx++, startRow);
		pstmt.setInt(idx++, endRow);
		//실행select : executeQuery()
		rs=pstmt.executeQuery();
		if(rs!=null){
			list=new ArrayList<Notice>();
			while(rs.next()){
				list.add((Notice)makeFromListResultSet(rs));
			}
		}
		return list;
	}finally{
		//처리가 된 후 객체 닫기
		JdbcUtil.close(pstmt);JdbcUtil.close(rs);
	}
	
}

}
