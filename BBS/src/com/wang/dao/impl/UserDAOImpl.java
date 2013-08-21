package com.wang.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.wang.dao.UserDAO;
import com.wang.objects.Reply;
import com.wang.objects.User;

public class UserDAOImpl implements UserDAO {
	@Override
	public List<User> getUser(int userId) {
		
		Session session = HibernateSessionFactory.getSession();
		Query query = session.createQuery(
				" from User where id =" + userId);
		List<User> list = null;
		try {
			list = query.list();
		} catch (Exception ex) {
			System.out.println("error with getting replys");
		} finally {
		}

		return list;
		
	}

}
