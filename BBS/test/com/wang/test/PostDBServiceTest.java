package com.wang.test;

import org.junit.Test;

import com.wang.service.impl.ReplyPageManagerImpl;


public class PostDBServiceTest {
	@Test
	public void testReply() {
		ReplyPageManagerImpl pageManager =ReplyPageManagerImpl.getInstance();
		pageManager.add(1, "asdasd", "asdasd");
	}
}
