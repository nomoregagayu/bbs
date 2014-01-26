package com.wang.tool.services.impl;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.annotation.Resource;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Component;

import com.wang.struts.services.UserManager;
import com.wang.tool.services.EncryptorManager;
import com.wang.tool.services.MailManager;

/* 邮件收发器，有编解码功能 md5，base64
 * 多线程操作（未注意资源共享 以后修改）*/

@Component("mailManagerImpl")
public class MailManagerImpl implements MailManager, Runnable {
	private EncryptorManager enManager;
	private MailSender mailSender;
	private SimpleMailMessage msg;

	public MailSender getMailSender() {
		return mailSender;
	}

	@Resource
	public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}

	public EncryptorManager getEnManager() {
		return enManager;
	}

	@Resource(name = "encryptorManagerImpl")
	public void setEnManager(EncryptorManager enManager) {
		this.enManager = enManager;
	}

	public void setMessage(String emailRec, String passwordRec)
			throws UnsupportedEncodingException {
		msg = new SimpleMailMessage();
		msg.setFrom("gagayu");
		msg.setTo(emailRec);
		msg.setSubject("邮箱激活-呵呵");
		msg.setText("你好，" + emailRec + "，欢迎成为屌炸天用户。\n" + "请点击下面的链接对你的邮箱进行验证：\n"
				+ "http://localhost:8080/BBS/user/reg_verify?url="
				+ enManager.base64En(passwordRec)
				+ enManager.base64En(emailRec) + "\n"
				+ "(此链接15天内有效，超时需要重新获取验证邮件)"
				+ "如果该链接无法点击，请将其复制粘贴到你的浏览器地址栏中访问。\n"
				+ "验证邮箱会增加帐号的安全性，也会享受更多的我们更多的牛X服务。");

	}

	// //留以后用
	// public void setSender(String stmpServer, String emailSender,
	// String passwordSender) {
	// JavaMailSenderImpl sender = new JavaMailSenderImpl();
	// // 邮件发送者邮箱SMTP服务器
	// sender.setHost(stmpServer);
	// // 邮件发送者邮箱用户
	// sender.setUsername(emailSender);
	// // 邮件发送者邮箱密码
	// sender.setPassword(passwordSender);
	// // 客户端认证设置
	// Properties props = new Properties();
	// // starttls
	// props.put("mail.smtp.starttls.enable", "true");
	// // 同时通过验证
	// props.put("mail.smtp.auth", "true");
	// // 存储发送邮件服务器的信息
	// props.put("mail.smtp.host", stmpServer);
	// // 服务器端认证设置
	// sender.setJavaMailProperties(props);
	// this.mailSender = sender;
	// }

	@Override
	public void run() {
		mailSender.send(msg);
	}

	@Override
	public void setSender(String stmpServer, String emailSender,
			String passwordSender) {
		// TODO Auto-generated method stub

	}
}
