package com.cdac.service;

import com.cdac.dto.Student;


public interface StudentService {
	
	void newStudRecord(Student student);
	
	Boolean findStudent(int userId);
	
	Student checkStud(int userId);
}
