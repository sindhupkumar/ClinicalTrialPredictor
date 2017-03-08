package com.clinicalpredictor.dao;

import java.util.List;

import com.clinicalpredictor.model.Task;
import com.clinicalpredictor.model.User;

public interface TaskDAO {
	public boolean insertTask(Task newTask);
	public List<Task> getTaskForUser(User userId);
	public Task getLatestTaskOfUser(User userId);
}

