package com.wang.service.hibernate;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.wang.objects.Post;

public class PostDBService {
	static public List<Post> getPosts() {
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
