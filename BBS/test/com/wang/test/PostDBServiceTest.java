package com.wang.test;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.wang.tool.services.EncryptorManager;
import com.wang.tool.services.MailManager;


public class PostDBServiceTest {
	
//	
//	@Test
//	public void testReply() {
//		ClassPathXmlApplicationContext ctx= new ClassPathXmlApplicationContext("application.xml");
//		PageManager pageManager =(PageManager)ctx.getBean("replyPageManagerImpl");
//		pageManager.add(0, "asdasd1111", "asdasd");
//		ctx.destroy();
//	}
//	@Test
//	public void  testPostManager() {
//		ClassPathXmlApplicationContext ctx= new ClassPathXmlApplicationContext("application.xml");
//		PageManager pageManager =(PageManager)ctx.getBean("postPageManagerImpl");
//		System.out.println(pageManager.list(1).getTotalCount());
//		
//		ctx.destroy();
//	}
//	@Test
//	public void  testReplyManager() {
//		ClassPathXmlApplicationContext ctx= new ClassPathXmlApplicationContext("application.xml");
//		PageManager pageManager =(PageManager)ctx.getBean("replyPageManagerImpl");
//		System.out.println(pageManager.list(1,1).getTotalCount());
//		
//		ctx.destroy();
//	}
//	@Test
//	public void testAddUser() {
//		ClassPathXmlApplicationContext ctx= new ClassPathXmlApplicationContext("application.xml");
//		UserManager userManager =(UserManager)ctx.getBean("userManagerImpl");
//		userManager.addUser("nihaome", "nihaome");
//
//	}
//	@Test
//	public void testEncryptor() throws UnsupportedEncodingException, NoSuchAlgorithmException {
//		ClassPathXmlApplicationContext ctx= new ClassPathXmlApplicationContext("application.xml");
//		EncryptorManager enManager = (EncryptorManager)ctx.getBean("encryptorManagerImpl");
//		System.out.println(enManager.base64En("wang1")+enManager.md5En("asdasd"));
//	}
	@Test
	public void mailTester() throws UnsupportedEncodingException {
		ClassPathXmlApplicationContext ctx= new ClassPathXmlApplicationContext("application.xml");
		MailManager mailManager = (MailManager)ctx.getBean("mailManagerImpl");
		mailManager.sendMail("wangmengyang101@me.com", "asdasd");

	}
}
