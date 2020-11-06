package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.AdminDao;
import com.cdac.dto.Student;
import com.cdac.dto.User;

@Service
public class AdminServiceImple implements AdminService {

	@Autowired
	private AdminDao adminDao;
	
	@Override
	public void insertNewAdmin(User user) {
		adminDao.addNewAdmin(user);	
	}

	@Override
	public User findUser(int userId) {
		return adminDao.selectAdmin(userId);
	}

	@Override
	public void modifyUser(User user) {
		adminDao.updateAdmin(user);
	}

	@Override
	public void removeUser(int userId) {
		adminDao.deleteAdmin(userId);
		
	}

	@Override
	public List<Student> getReqStud(String status) {
		return adminDao.reqStudList(status);
	}

	@Override
	public void modityConStud(Student student) {
		adminDao.setConStud(student);
		
	}

	@Override
	public void rejStudReq(int studId) {
		adminDao.delRejStud(studId);	
	}

}
