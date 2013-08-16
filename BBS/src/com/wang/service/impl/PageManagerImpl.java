package com.wang.service.impl;

import com.wang.dao.impl.PostDAOImpl;
import com.wang.objects.Page;
import com.wang.util.Configuration;
public class PageManagerImpl {
	public Page getPage(String article, int currentPage) {
		Page page = new Page();
		if (article.equals("Post")) {
			PostDAOImpl postImpl = new PostDAOImpl();
			int totalCount = postImpl.getTotalCount();
			page.setTotalCount(totalCount);
			page.setCurrentPage(currentPage);
			if (totalCount % 20 == 0) {
				page.setTotalPage(totalCount / 20);
			} else {
				page.setTotalPage((totalCount / 20) + 1);
			}
			if (currentPage == 1) {
				page.setHasPre(false);
			}else {
				page.setHasPre(true);
			}
			if(currentPage<page.getTotalPage()) {
				page.setHasNext(true);
			}else {
				page.setHasNext(false);
			}
			page.setArticle(postImpl.getPosts((currentPage* Configuration.DEFAULT_PostMaxPage), Configuration.DEFAULT_PostMaxPage));
		}
		return page;

	}
}
