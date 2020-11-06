package com.cdac.dao;


import com.cdac.dto.Student;

public interface StudentDao {
	
	void insertStudRecord(Student student);
	
	Boolean selectStudent(int userId);
	
	Student checkStatusStud(int userId);
	
}
