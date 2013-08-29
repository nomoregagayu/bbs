package com.wang.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.wang.models.Page;
import com.wang.models.Reply;
import com.wang.service.impl.ReplyPageManagerImpl;

public class ReplyAction extends ActionSupport {

	Page page;
	ReplyPageManagerImpl pageManager;
	Reply reply;
	public ReplyAction() {
		reply = new Reply();
		page = new Page();
		pageManager= ReplyPageManagerImpl.getInstance();
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
