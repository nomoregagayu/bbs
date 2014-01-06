package com.wang.actions;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;
import com.wang.services.PageManager;
import com.wang.web.dto.Page;

@Component("post_*")
@Scope("prototype")
public class PostAction extends ActionSupport {

	Page page;
	PageManager pageManager;

	public PageManager getPageManager() {
		return pageManager;
	}

	@Resource(name = "postPageManagerImpl")
	public void setPageManager(PageManager pageManager) {
		this.pageManager = pageManager;
	}

	public PostAction() {
		page = new Page();
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public String list() {
		if (page.getCurrentPage() == 0) {
			page.setCurrentPage(1);
		}
		try {
			page = pageManager.list(page.getCurrentPage());
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

}
