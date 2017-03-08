package com.clinicalpredictor.dao;

import java.io.File;

import com.clinicalpredictor.model.User;

public interface UserDAO {
	public boolean signUp(User newUser);
	public User searchUser(String username, String pwd);
	User getUser(int userId);	
}
