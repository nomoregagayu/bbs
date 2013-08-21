package com.wang.dao.impl;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.wang.dao.ReplyDAO;
import com.wang.objects.Post;
import com.wang.objects.Reply;
import com.wang.objects.User;

public class ReplyDAOImpl implements ReplyDAO {
	@Override
	public List<Reply> getReplys(int pid) {

		Session session = HibernateSessionFactory.getSession();
		Query query = session
				.createQuery("select r from Reply r where postId =" + pid);
		List<Reply> list = null;
		try {
			list = query.list();
		} catch (Exception ex) {
			System.out.println("error with getting replys");
		} finally {
			HibernateSessionFactory.closeSession();
		}
		return list;

	}

	@Override
	public void saveReply(int postId, String title, String content) {
		Timestamp stampDate = new Timestamp(System.currentTimeMillis());
		Reply reply = new Reply(postId, 1, 1, title, content, stampDate);
		// 需要添加外键表
		User user = new User();
		user.setId(1);
		reply.setUser(user);
		Post post = new Post();
		post.setId(1);
		reply.setPost(post);
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		session.save(reply);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
}
