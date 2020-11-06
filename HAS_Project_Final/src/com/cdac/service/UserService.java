package com.cdac.service;

import com.cdac.dto.User;

public interface UserService {
	public void addUser(User user);
	
	String findUser(User user);
	
	
	boolean checkNewUserrr(User user);
	
	String forgotPassword(String userEmailId);
	
}
