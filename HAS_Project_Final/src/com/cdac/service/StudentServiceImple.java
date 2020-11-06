package com.cdac.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.StudentDao;
import com.cdac.dto.Student;

@Service
public class StudentServiceImple implements StudentService {

	@Autowired
	private StudentDao studentDao;
	
	@Override
	public void newStudRecord(Student student) {
		studentDao.insertStudRecord(student);
	}

	@Override
	public Boolean findStudent(int userId) {
		
		return studentDao.selectStudent(userId);
		
	}

	@Override
	public Student checkStud(int userId) {
		
		return studentDao.checkStatusStud(userId);
	}

}
