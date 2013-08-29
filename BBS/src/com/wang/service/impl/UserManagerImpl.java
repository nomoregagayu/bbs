package com.wang.service.impl;

import com.wang.dao.impl.UserDAOImpl;

public class UserManagerImpl {
	UserDAOImpl userDAO;
	private static UserManagerImpl instance;

	private UserManagerImpl() {
		userDAO = new UserDAOImpl();
	}

	public static synchronized UserManagerImpl getInstance() {
		if (instance == null) {
			instance = new UserManagerImpl();
		}
		return instance;
	}

	public boolean validateUser(String userName, String password) {

		if (userDAO.getUser(userName, password).isEmpty()) {
			return false;
		} else {
			return true;
		}
	}

}
