package com.wang.services;


public interface UserManager {
	boolean validateUser(String userName, String password) ;
	public void addUser(String userName, String password);
}