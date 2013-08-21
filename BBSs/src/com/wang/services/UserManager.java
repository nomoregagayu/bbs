package com.wang.services;

import com.wang.dao.impl.UserDAOImpl;

public class UserManager {
	public boolean validateUser(String userName, String password) {
		UserDAOImpl userDAO = new UserDAOImpl();
		if(userDAO.getUser(userName, password).isEmpty()) {
			return false;
		}else {
			return true;
		}
	}
}
