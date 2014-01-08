package com.wang.dao.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;

import com.wang.dao.UserDAO;
import com.wang.models.Reply;
import com.wang.models.User;
import com.wang.util.HibernateSessionFactory;

@Component("userDAOImpl")
public class UserDAOImpl implements UserDAO {
	SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<User> getUser(Integer userId) {

		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery(" from User where id =" + userId);
		List<User> list = null;
		list = query.list();
		return list;
	}

	public List<User> getUser(String userName, String password) {
		Session session = sessionFactory.getCurrentSession();
		// 切记string要加引号
		Query query = session
				.createQuery("  select u from User u where u.name = '"
						+ userName + "'" + "and password = '" + password + "'");
		List<User> list = null;
		list = query.list();
		return list;
	}

	public void addUser(String userName, String password) {
			Session session = sessionFactory.getCurrentSession();
			User user = new User();
			user.setName(userName);
			user.setPassword(password);
			Timestamp stampDate = new Timestamp(System.currentTimeMillis());
			user.setRtime(stampDate);
			session.save(user);
	}
}
