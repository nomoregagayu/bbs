package com.wang.dao;

import java.util.List;

import com.wang.objects.User;

public interface UserDAO {

	List<User> getUser(String userName, String password);

	List<User> getUser(Integer userId);



}
