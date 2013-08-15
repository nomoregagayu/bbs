package com.wang.service.hibernate;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.wang.objects.Post;
import com.wang.objects.Reply;

public class ReplyDBService {
 static public List<Reply> getReplys(int pid){
	 
	 Session session = HibernateSessionFactory.getSession();
		Query query = session.createQuery("select r from Reply r where pid ="+pid);
		List<Reply> list = null;
		try {
			list = query.list();
		} catch (Exception ex) {
			System.out.println("error with getting posts");
		} finally {
		}
		return list;
	 
 }
}
