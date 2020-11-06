package com.cdac.dao;

import com.cdac.dto.User;

public interface UserDao {
	public void insertUser(User user);
	
	String checkUser(User user);
	
	boolean checkNewUser(User user);
	
	String forgotPassword(String userEmailId);
}
