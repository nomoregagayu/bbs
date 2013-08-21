package com.wang.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.wang.dao.UserDAO;
import com.wang.objects.Reply;
import com.wang.objects.User;

public class UserDAOImpl implements UserDAO {
	@Override
	public List<User> getUser(Integer userId) {
		
		Session session = HibernateSessionFactory.getSession();
		Query query = session.createQuery(" from User where id =" + userId);
		List<User> list = null;
		try {
			list = query.list();
		} catch (Exception ex) {
			System.out.println("error with getting users");
		} finally {
			HibernateSessionFactory.closeSession();
		}

		return list;
		
	}

	@Override
	public List<User> getUser(String userName, String password) {
		Session session = HibernateSessionFactory.getSession();
		//切记string要加引号
		Query query = session.createQuery(
				"  select u from User u where u.name = '"+userName+"'" +"and password = '"+password+"'");
		List<User> list = null;
		try {
			list = query.list();
		} catch (Exception ex) {
			System.out.println("error with getting users");
		} finally {
			HibernateSessionFactory.closeSession();
		}

		return list;
	}

}
