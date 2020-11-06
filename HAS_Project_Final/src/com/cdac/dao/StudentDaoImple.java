package com.cdac.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate4.HibernateCallback;

import com.cdac.dto.Student;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDaoImple implements StudentDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	@Override
	public void insertStudRecord(Student student) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.save(student);
				tr.commit();
				session.flush();
				session.close();
				
				return null;
			}
			
		});

	}


	@Override
	public Boolean selectStudent(int userId) {
		Boolean student = hibernateTemplate.execute(new HibernateCallback<Boolean>() {

			@Override
			public Boolean doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				
				Student stud = (Student)session.get(Student.class, userId);
				boolean ex = false;
				if(stud!=null) {
					ex = true;
				}
				
				tr.commit();
				session.flush();
				session.close();
				return ex;
			}
			
		});
		return student;
	}


	@Override
	public Student checkStatusStud(int userId) {
		Student student = hibernateTemplate.execute(new HibernateCallback<Student>() {

			@Override
			public Student doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				
				Student ex = (Student)session.get(Student.class, userId);
		
				tr.commit();
				session.flush();
				session.close();
				return ex;
			}
			
		});
		return student;
	}

}
