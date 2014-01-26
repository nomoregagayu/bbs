package com.wang.tool.services;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

public interface EncryptorManager {
	public String base64En(String userName) throws UnsupportedEncodingException;
	public String base64De(String userName) throws UnsupportedEncodingException;
	public String md5En(String password) throws NoSuchAlgorithmException;
}
