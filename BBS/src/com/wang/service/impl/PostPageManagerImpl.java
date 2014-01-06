package com.wang.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.wang.dao.PostDAO;
import com.wang.services.PageManager;
import com.wang.util.Configuration;
import com.wang.web.dto.Page;

//Code refactoring
@Component("postPageManagerImpl")
public class PostPageManagerImpl implements PageManager {
	private PostDAO postDAOImpl;
	public PostDAO getPostDAOImpl() {
		return postDAOImpl;
	}
	@Resource(name="postDAOImpl")
	public void setPostDAOImpl(PostDAO postDAOImpl) {
		this.postDAOImpl = postDAOImpl;
	}
	public Page list(int currentPage) {
		Page page = new Page();
		int totalCount = postDAOImpl.getTotalCount();
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
		page.setArticle(postDAOImpl.getPosts(
				((currentPage - 1) * Configuration.DEFAULT_POSTMAXPAGE),
				Configuration.DEFAULT_POSTMAXPAGE));
		return page;

	}
	@Override
	public Page list(int pid, int currentPage) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void add(Integer pid, String title, String content) {
		// TODO Auto-generated method stub
		
	}
}
