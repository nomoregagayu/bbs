package com.wang.dao.impl;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.wang.dao.ReplyDAO;
import com.wang.objects.Reply;

public class ReplyDAOImpl implements ReplyDAO {
	@Override
	public List<Reply> getReplys(int pid) {

		Session session = HibernateSessionFactory.getSession();
		Query query = session.createQuery(
				"select r from Reply r where pid =" + pid);
		List<Reply> list = null;
		try {
			list = query.list();
		} catch (Exception ex) {
			System.out.println("error with getting replys");
		} finally {
		}
		return list;

	}

	@Override
	public void saveReply(int pid, String title, String content) {
		Timestamp stampDate = new Timestamp(System.currentTimeMillis());
		Reply reply = new Reply(pid, 1, "gagayu", title, content, stampDate);
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		session.save(reply);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
	}
}
