package com.cdac.dao;



import java.util.List;

import com.cdac.dto.Student;
import com.cdac.dto.User;

public interface AdminDao {
	void addNewAdmin(User user);
	
	void deleteAdmin(int userId);
	
	User selectAdmin(int userId);
	
	void updateAdmin(User user);
	
	List<Student> reqStudList(String status);
	
	void setConStud(Student student);
	
	void delRejStud(int studId);
	
}
