package com.wang.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.wang.dao.PostDAO;
import com.wang.models.Post;

public class PostDAOImpl implements PostDAO {
	@SuppressWarnings("unchecked")
	@Override
	public List<Post> getPosts(int firstResult, int maxResult)  {
		Session session = HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Post").setFirstResult(firstResult).setMaxResults(maxResult);
		List<Post> list = null;
		try {
			list = query.list();
		} catch (Exception ex) {
			System.out.println("error with getting posts");
		} finally {
			HibernateSessionFactory.closeSession();
		}
		return list;
	}
	@Override
	public Integer getTotalCount() {
		Session session = HibernateSessionFactory.getSession();
		Query query = session.createQuery("select count (*) from Post p");
		int count=((Number)query.iterate().next()).intValue();
		return count;
	}
}
