package com.wang.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.wang.dao.UserDAO;
import com.wang.services.UserManager;

@Component("userManagerImpl")
public class UserManagerImpl implements UserManager {
	UserDAO userDAOImpl;

	public UserDAO getUserDAOImpl() {
		return userDAOImpl;
	}

	@Resource(name = "userDAOImpl")
	public void setUserDAOImpl(UserDAO userDAOImpl) {
		this.userDAOImpl = userDAOImpl;
	}
	public boolean validateUser(String userName, String password) {

		if (userDAOImpl.getUser(userName, password).isEmpty()) {
			return false;
		} else {
			return true;
		}
	}
	public void addUser(String userName, String password) {
			userDAOImpl.addUser(userName, password);
	}
}
