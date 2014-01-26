package com.wang.actions;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;
import com.wang.models.User;
import com.wang.struts.services.UserManager;

@Component("reg_*")
public class REGAction extends ActionSupport {
	private User user;
	private UserManager userManager;

	public User getUser() {
		return user;
	}
	@Resource
	public void setUser(User user) {
		this.user = user;
	}

	public UserManager getUserManger() {
		return userManager;
	}

	@Resource(name = "userManagerImpl")
	public void setUserManger(UserManager userManger) {
		this.userManager = userManger;
	}

	public String execute() {
		return SUCCESS;
	}

	public String add() {
		userManager.addUser(user.getName(), user.getPassword());
		return SUCCESS;

	}

	// send mail verification
	public String send() {
		if (userManager.sendVerification(user.getName(), user.getPassword())) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

}
