package com.wang.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;

import com.wang.dao.PostDAO;
import com.wang.models.Post;

@Component("postDAOImpl")
public class PostDAOImpl implements PostDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	public List<Post> getPosts(int firstResult, int maxResult) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Post")
				.setFirstResult(firstResult).setMaxResults(maxResult);
		List<Post> list = null;
		list = query.list();
		return list;
	}

	public Integer getTotalCount() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("select count (*) from Post p");
		int count = ((Number) query.iterate().next()).intValue();
		return count;
	}
}
