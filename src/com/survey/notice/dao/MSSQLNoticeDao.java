package com.survey.notice.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.survey.notice.model.AttachedFile;
import com.survey.notice.model.Notice;

public class MSSQLNoticeDao extends NoticeDao{

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
		// TODO Auto-generated method stub
		return null;
	}

}
