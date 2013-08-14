package com.wang.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.wang.objects.Article;
import com.wang.service.hibernate.ArticlesDBService;

public class GetArticleTest {

	@Test
	public void test() {
		List<Article> articles = new ArrayList<Article>(0);
		articles =  ArticlesDBService.treePopulator(articles, 0);
		
		System.out.println(articles.size()+ ""+articles.get(0).getId());
		
		Article article =  ArticlesDBService.getArticle(1);
		System.out.println(article.getId()+ article.getCont());
		
		ArticlesDBService.saveArticle(1,"1231","123");

	}

}
