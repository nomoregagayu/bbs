package com.wang.dao.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;

import com.wang.dao.ReplyDAO;
import com.wang.models.Post;
import com.wang.models.Reply;
import com.wang.models.User;
import com.wang.util.HibernateSessionFactory;
@Component("replyDAOImpl")
public class ReplyDAOImpl implements ReplyDAO {
	SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<Reply> getReplys(int pid, int firstResult, int maxResult) {

		Session session = sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("select r from Reply r where postId =" + pid)
				.setFirstResult(firstResult).setMaxResults(maxResult);
		List<Reply> list = null;
		list = query.list();
		return list;

	}

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
		Session session = sessionFactory.getCurrentSession();
		session.save(reply);
	}

	public Integer getTotalCount() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("select count (*) from Reply r");
		int count = ((Number) query.iterate().next()).intValue();
		return count;
	}

}
