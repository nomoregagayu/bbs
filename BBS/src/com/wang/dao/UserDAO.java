package com.wang.dao;

import java.util.List;

import com.wang.models.User;

public interface UserDAO {

	List<User> getUser(String userName, String password);

	List<User> getUser(Integer userId);

	public void addUser(String userName, String password);
	void sendVerification(String userName);

}
