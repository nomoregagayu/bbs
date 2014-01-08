package com.wang.struts.services;


public interface UserManager {
	public boolean validateUser(String userName, String password) ;
	public void addUser(String userName, String password);
	public boolean sendVerification(String userName,String password);
}