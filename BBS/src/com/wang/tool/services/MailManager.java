package com.wang.tool.services;

import java.io.UnsupportedEncodingException;

import org.springframework.mail.MailSender;

public interface MailManager {
	public void setSender(String stmpServer, String emailSender,
			String passwordSender);
	public void setMessage(String emailRec, String passwordRec) throws UnsupportedEncodingException;
}
