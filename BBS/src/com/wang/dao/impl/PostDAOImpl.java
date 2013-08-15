package com.wang.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.wang.dao.PostDAO;
import com.wang.objects.Post;

public class PostDAOImpl implements PostDAO {
	@Override
	public List<Post> getPosts()  {
		Session session = HibernateSessionFactory.getSession();
		Query query = session.createQuery("select p from Post p");
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

}
