package com.wang.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.wang.models.Page;
import com.wang.service.impl.PostPageManagerImpl;

public class PostAction extends ActionSupport {

	Page page;
	PostPageManagerImpl pageManager;

	public PostAction() {
		page = new Page();
		pageManager = PostPageManagerImpl.getInstance();
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
