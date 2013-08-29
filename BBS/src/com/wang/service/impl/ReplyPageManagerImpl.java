package com.wang.service.impl;

import com.wang.dao.ReplyDAO;
import com.wang.dao.impl.ReplyDAOImpl;
import com.wang.models.Page;
import com.wang.services.PageManager;
import com.wang.util.Configuration;

//Code refactoring
public class ReplyPageManagerImpl implements PageManager {
	ReplyDAO replyImpl;
	private static ReplyPageManagerImpl instance;

	private ReplyPageManagerImpl() {
		replyImpl = new ReplyDAOImpl();
	}

	public static synchronized ReplyPageManagerImpl getInstance() {
		if (instance == null) {
			instance = new ReplyPageManagerImpl();
		}
		return instance;
	}

	public void add(Integer pid, String title, String content) {
		replyImpl.saveReply(pid, title, content);
	}

	public Page list(Integer pid, int currentPage) {
		Page page = new Page();

		int totalCount = replyImpl.getTotalCount();
		page.setTotalCount(totalCount);
		page.setCurrentPage(currentPage);
		// 设置总页数
		if (totalCount % 20 == 0) {
			page.setTotalPage(totalCount / 20);
		} else if (totalCount == 0) {
			page.setTotalPage(1);
		} else {
			page.setTotalPage((totalCount / 20) + 1);
		}
		// 是否有前页
		if (currentPage == 1) {
			page.setPrePage(1);
		} else {
			page.setPrePage(currentPage - 1);
		}
		// 是否有后页
		if (currentPage < page.getTotalPage()) {
			page.setNextPage(currentPage + 1);
		} else {
			page.setNextPage(currentPage);
		}
		// 获取页中的帖子
		page.setArticle(replyImpl.getReplys(pid,
				((currentPage - 1) * Configuration.DEFAULT_POSTMAXPAGE),
				Configuration.DEFAULT_POSTMAXPAGE));
		return page;
	}

}
