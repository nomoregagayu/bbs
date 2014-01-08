package com.wang.test;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.wang.services.PageManager;
import com.wang.services.UserManager;


public class PostDBServiceTest {
	
	
	@Test
	public void testReply() {
		ClassPathXmlApplicationContext ctx= new ClassPathXmlApplicationContext("application.xml");
		PageManager pageManager =(PageManager)ctx.getBean("replyPageManagerImpl");
		pageManager.add(0, "asdasd1111", "asdasd");
		ctx.destroy();
	}
	@Test
	public void  testPostManager() {
		ClassPathXmlApplicationContext ctx= new ClassPathXmlApplicationContext("application.xml");
		PageManager pageManager =(PageManager)ctx.getBean("postPageManagerImpl");
		System.out.println(pageManager.list(1).getTotalCount());
		
		ctx.destroy();
	}
	@Test
	public void  testReplyManager() {
		ClassPathXmlApplicationContext ctx= new ClassPathXmlApplicationContext("application.xml");
		PageManager pageManager =(PageManager)ctx.getBean("replyPageManagerImpl");
		System.out.println(pageManager.list(1,1).getTotalCount());
		
		ctx.destroy();
	}
	@Test
	public void testAddUser() {
		ClassPathXmlApplicationContext ctx= new ClassPathXmlApplicationContext("application.xml");
		UserManager userManager =(UserManager)ctx.getBean("userManagerImpl");
		userManager.addUser("nihaome", "nihaome");

	}

}
