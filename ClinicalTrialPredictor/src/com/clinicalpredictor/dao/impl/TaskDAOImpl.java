package com.clinicalpredictor.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.clinicalpredictor.dao.TaskDAO;
import com.clinicalpredictor.model.Task;
import com.clinicalpredictor.model.User;

public class TaskDAOImpl extends JdbcDaoSupport implements TaskDAO{

	@Override
	public boolean insertTask(Task newTask) {
		int i = getJdbcTemplate()
				.update("insert into task(taskId,userId,trialFileId,transFileId,testFileId,networkFileId,resultFileId) VALUES(?,?,?,?,?,?,?)",
						new Object[] { newTask.getTaskId(),
								newTask.getUser().getUserId(), newTask.getTrialFileInfo().getFileId(),
								newTask.getTransFileInfo().getFileId(), newTask.getTestFileInfo().getFileId(),
								newTask.getNetworkFileInfo().getFileId(),newTask.getResultFileInfo().getFileId()});
	 return true;
	}

	@Override
	public List<Task> getTaskForUser(User user) {
		List<Task> userTasks = null;
		userTasks = getJdbcTemplate().query("select taskId,userId,trialFileId,transFileId,testFileId,networkFileId,resultFileId "
				+ "from task where userId=?",
				new Object[] { user.getUserId() },new TaskMapper());	
		return userTasks;
	}

	@Override
	public Task getLatestTaskOfUser(User user) {
		return getJdbcTemplate().queryForObject(
				"select * from task where userId=? AND taskId = MAX (select taskId from task1 where userId=?)",
				new Object[] { user.getUserId(),user.getUserId()}, new TaskMapper());
	}
	
	private class TaskMapper implements RowMapper<Task> {
		@Override
		public Task mapRow(ResultSet resultset, int arg1) throws SQLException {
			Task task = new Task();
			UserDAOImpl userDAOImpl = new UserDAOImpl();
			FileInfoDAOImpl fileDAOImpl = new FileInfoDAOImpl();
			
			task.setTaskId(resultset.getInt("taskId"));
			task.setUser(userDAOImpl.getUser(resultset.getInt("userId")));
			task.setTrialFileInfo(fileDAOImpl.getFileInfo(resultset.getInt("trialFileId")));
			task.setTransFileInfo(fileDAOImpl.getFileInfo(resultset.getInt("transFileId")));
			task.setTestFileInfo(fileDAOImpl.getFileInfo(resultset.getInt("testFileId")));
			task.setNetworkFileInfo(fileDAOImpl.getFileInfo(resultset.getInt("networkFileId")));
			task.setResultFileInfo(fileDAOImpl.getFileInfo(resultset.getInt("resultFileId")));
			return task;
		}
	}
}
