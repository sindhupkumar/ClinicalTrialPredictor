package com.clinicalpredictor.service;

import com.clinicalpredictor.dao.UserDAO;
import com.clinicalpredictor.model.User;

public class ClinicalService {
	private UserDAO userDAO;
	
	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	public boolean createUser(User user) {
		boolean created=userDAO.signUp(user);
		return created;
	}
	
	public User searchUser(String username, String password) {
		User user = userDAO.searchUser(username, password);
		return user;
	}
}
