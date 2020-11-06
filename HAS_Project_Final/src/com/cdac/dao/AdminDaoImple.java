package com.cdac.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;


import com.cdac.dto.Student;
import com.cdac.dto.User;

@Repository
public class AdminDaoImple implements AdminDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Override
	public void addNewAdmin(User user) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.save(user);
				tr.commit();
				session.flush();
				session.close();
				
				return null;
			}
			
		});

	}

	@Override
	public void deleteAdmin(int userId) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.delete(new User(userId));
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
		
	}

	@Override
	public User selectAdmin(int userId) {
		User user = hibernateTemplate.execute(new HibernateCallback<User>() {

			@Override
			public User doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				User ex = (User)session.get(User.class, userId);
				tr.commit();
				session.flush();
				session.close();
				return ex;
			}
			
		});
		return user;
	}

	@Override
	public void updateAdmin(User user) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.update(user);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
		
	}

	@Override
	public List<Student> reqStudList(String status) {
		List<Student> expList = hibernateTemplate.execute(new HibernateCallback<List<Student>>() {

			@Override
			public List<Student> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Student where stud_status = ?");
				q.setString(0, status);
				List<Student> li = q.list();
				 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
			
		});
		return expList;
	}

	@Override
	public void setConStud(Student student) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.update(student);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
		
	}

	@Override
	public void delRejStud(int userid) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.delete(new Student(userid));
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
		
	}

}
