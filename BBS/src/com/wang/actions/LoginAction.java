package com.wang.actions;


import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;
import com.wang.models.User;
import com.wang.services.UserManager;
@Component("login_*")
//spring 默认scope 是单例模式
//这样只会创建一个Action对象
//每次访问都是同一个Action对象，数据不安全
//struts2 是要求 每次次访问 都对应不同的Action
// scope="prototype" 可以保证 当有请求的时候 都创建一个Action对象
@Scope("prototype")
public class LoginAction extends ActionSupport {
	User user;
	UserManager userManager;
	
	public UserManager getUserManager() {
		return userManager;
	}
	@Resource(name="userManagerImpl")
	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
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
	public String execute() {
		return SUCCESS;
	}
}