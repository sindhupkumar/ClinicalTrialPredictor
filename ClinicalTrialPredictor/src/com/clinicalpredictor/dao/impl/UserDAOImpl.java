package com.clinicalpredictor.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import com.clinicalpredictor.dao.UserDAO;
import com.clinicalpredictor.model.User;

public class UserDAOImpl extends JdbcDaoSupport implements UserDAO {

	@Override
	public User getUser(int userId) {
		return getJdbcTemplate().queryForObject(
				"select * from user where userid=?",
				new Object[] { userId }, new UserMapper());
	}
	
	@Override
	public boolean signUp(User newUser) {
		if(newUser.getUsername()!= null && newUser.getPassword()!= null){	
		  int i = getJdbcTemplate()
					.update("insert into user(username,password,firstname,lastname,email) VALUES(?,?,?,?,?)",
							new Object[] { newUser.getUsername(),
									newUser.getPassword(), newUser.getFirstname(),
									newUser.getLastname(), newUser.getEmail(),});
		 return true;
		} else
		 return false;
	}

	@Override
	public User searchUser(String username, String password) {
		User user = null;
		try{
			user = getJdbcTemplate().queryForObject(
					"select * from user where username=? and password=?",
					new Object[] { username, password }, new UserMapper());
		}catch(Exception e){
			System.out.println("Couldn't Search for User with username::"+username+" password::"+password+":::"+e);
		}
		return user;
	}
	
	private class UserMapper implements RowMapper<User> {
		@Override
		public User mapRow(ResultSet resultset, int arg1) throws SQLException {
			User user = new User();
			user.setUserId(resultset.getInt("userid"));
			user.setUsername(resultset.getString("username"));
			user.setPassword(resultset.getString("password"));
			user.setFirstname(resultset.getString("firstname"));
			user.setLastname(resultset.getString("lastname"));
			user.setEmail(resultset.getString("email"));
			return user;
		}

	}
}
