package com.clinicalpredictor.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.clinicalpredictor.dao.FileInfoDAO;
import com.clinicalpredictor.model.FileInfo;
import com.clinicalpredictor.model.User;

public class FileInfoDAOImpl extends JdbcDaoSupport implements FileInfoDAO {

	@Override
	public boolean uploadFile(User user, String path) {
		int i = getJdbcTemplate().update("insert into FileInfo(userId,path) VALUES(?,?)",new Object[] {user.getUserId(),
				path});
		return true;
	}

	@Override
	public List<FileInfo> searchFile(User user) {
		List<FileInfo> files = null;
		files = getJdbcTemplate().query("select fileId,userId,path from fileInfo where userId=?",
				new Object[] { user.getUserId() },new FileInfoMapper());
		return files;
	}

	@Override
	public FileInfo getFileInfo(int fileId) {
		return getJdbcTemplate().queryForObject(
				"select * from fileInfo where fileId=?",
				new Object[] { fileId }, new FileInfoMapper());
	}
	
	private class FileInfoMapper implements RowMapper<FileInfo> {
		@Override
		public FileInfo mapRow(ResultSet resultset, int arg1) throws SQLException {
			FileInfo fileInfo = new FileInfo();
			UserDAOImpl userDAOImpl = new UserDAOImpl();
			fileInfo.setFileId(resultset.getInt("fileId"));
			fileInfo.setPath(resultset.getString("path"));
			fileInfo.setUser(userDAOImpl.getUser(resultset.getInt("userId")));
			return fileInfo;
		}
	}
}
