package com.wang.struts.services.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.wang.dao.ReplyDAO;
import com.wang.dao.impl.ReplyDAOImpl;
import com.wang.struts.services.PageManager;
import com.wang.util.Configuration;
import com.wang.web.dto.Page;

//Code refactoring
@Component("replyPageManagerImpl")
public class ReplyPageManagerImpl implements PageManager  {
	ReplyDAO replyDAOImpl;
	
	public ReplyDAO getReplyDAOImpl() {
		return replyDAOImpl;
	}
	@Resource(name="replyDAOImpl")
	public void setReplyDAOImpl(ReplyDAO replyDAOImpl) {
		this.replyDAOImpl = replyDAOImpl;
	}
	@Override
	//事物管理 有spring来管理 默认required（如果有一个transaction用存在的 没有一个新的）readonly(提高性能 用只读连接)
	public void add(Integer pid, String title, String content) {
		replyDAOImpl.saveReply(pid, title, content);
	}
	@Override
	public Page list(int pid, int currentPage) {
		Page page = new Page();
		int totalCount = replyDAOImpl.getTotalCount();
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
		page.setArticle(replyDAOImpl.getReplys(pid,
				((currentPage - 1) * Configuration.DEFAULT_POSTMAXPAGE),
				Configuration.DEFAULT_POSTMAXPAGE));
		return page;
	}
	@Override
	public Page list(int currentPage) {
		// TODO Auto-generated method stub
		return null;
	}

}
