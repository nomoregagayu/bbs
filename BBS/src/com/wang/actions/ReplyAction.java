package com.wang.actions;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;
import com.wang.models.Reply;
import com.wang.services.PageManager;
import com.wang.web.dto.Page;
@Component("reply_*")
@Scope("prototype")
public class ReplyAction extends ActionSupport {

	Page page;
	Reply reply;
	PageManager pageManager;

	public PageManager getPageManager() {
		return pageManager;
	}
	@Resource(name = "replyPageManagerImpl")
	public void setPageManager(PageManager pageManager) {
		this.pageManager = pageManager;
	}

	public Page getPage() {
		return page;
	}
	public Reply getReply() {
		return reply;
	}
	public String edit() {
		return SUCCESS;
	}
	public String add() {
		try {
			pageManager.add(reply.getPostId(), reply.getTitle(), reply.getContent());
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
			return ERROR;
		}
	}
	public String list() {
		if (page.getCurrentPage() == 0) {
			page.setCurrentPage(1);
		}
		try {
			page = pageManager.list(reply.getPostId(), page.getCurrentPage());
		} catch (NumberFormatException ex) {
			System.out.println("error wit lists");
			ex.printStackTrace();
		}
		if (page != null) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public void setPage(Page page) {
		this.page = page;
	}
	
	public void setReply(Reply reply) {
		this.reply = reply;
	}
}
