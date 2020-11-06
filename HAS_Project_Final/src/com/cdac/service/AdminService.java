package com.cdac.service;



import java.util.List;

import com.cdac.dto.Student;
import com.cdac.dto.User;


public interface AdminService {
	void insertNewAdmin(User user );
	
	User findUser(int userId); 

	void modifyUser(User user);
	
	void removeUser(int userId);
	
	List<Student> getReqStud(String status);
	
	void modityConStud(Student student);
	
	void rejStudReq(int studId);
}
