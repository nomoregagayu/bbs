package com.wang.struts.services.impl;

import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.wang.dao.UserDAO;
import com.wang.struts.services.UserManager;
import com.wang.tool.services.MailManager;

@Component("userManagerImpl")
public class UserManagerImpl implements UserManager {
	UserDAO userDAO;
	MailManager mailManager;
	

	@Resource(name = "mailManagerImpl")
	public void setMailManager(MailManager mailManager) {
		this.mailManager = mailManager;
	}

	public UserDAO getUserDAOImpl() {
		return userDAO;
	}

	@Resource(name = "userDAOImpl")
	public void setUserDAOImpl(UserDAO userDAOImpl) {
		this.userDAO = userDAOImpl;
	}

	public boolean validateUser(String userName, String password) {

		if (userDAO.getUser(userName, password).isEmpty()) {
			return false;
		} else {
			return true;
		}
	}

	public void addUser(String userName, String password) {
		userDAO.addUser(userName, password);
	}

	public boolean sendVerification(String userName, String password) {
		try {
			userDAO.send(userName);
			mailManager.sendMail(userName, password);
			return true;
		} catch (UnsupportedEncodingException ex) {
			ex.printStackTrace();
			return false;
		}
	}
}
