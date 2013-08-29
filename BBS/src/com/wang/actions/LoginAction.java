package com.wang.actions;


import com.opensymphony.xwork2.ActionSupport;
import com.wang.models.User;
import com.wang.service.impl.UserManagerImpl;

public class LoginAction extends ActionSupport {
	User user;
	UserManagerImpl userManager;
	
	public LoginAction() {
		userManager =  UserManagerImpl.getInstance();
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String verify() {
		if(userManager.validateUser(user.getName(), user.getPassword())){
		return SUCCESS;
		}else {
			this.addFieldError("error","error with name or password");
			return ERROR;
		}
	}
	public String input() {
		return SUCCESS;
	}
}