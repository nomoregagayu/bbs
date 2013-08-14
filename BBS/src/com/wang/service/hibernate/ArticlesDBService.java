package com.wang.service.hibernate;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.wang.objects.Article;

public class ArticlesDBService {
	///asdasd
	// grade 缩进级别
	// 用Arraylist来创建递归， 从0 开始开始循环
	static public List<Article> treePopulator(List<Article> articles, int id) {
		Session session = HibernateSessionFactory.getSession();
		// hibernate 不能用* 用对象代替, 注意这里你的from是实体类而不是表名，这个应该大家都知道，注意大小写
		Query query = session
				.createQuery("select a from Article a where pid = " + id);
		try {
			List list = query.list();
			for (int i = 0; i < list.size(); i++) {
				Article article = (Article) list.get(i);
				articles.add(article);
				if (!article.getIsleaf()) {
					treePopulator(articles, article.getId());

				}
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			HibernateSessionFactory.closeSession();
		}
		return articles;

	}

	static public Article getArticle(int id) {
		Session session = HibernateSessionFactory.getSession();
		Query query = session
				.createQuery("select a from Article a where id = " + id);
		Article article = (Article) query.list().get(0);
		HibernateSessionFactory.closeSession();
		return article;

	}
	static public  void saveArticle(int pid, String title, String content) {
		Timestamp timestamp = new Timestamp(System.currentTimeMillis()); 
		Article article =new Article( pid, 1,title,content, timestamp, true);
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		session.save(article);
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		
	}

}
