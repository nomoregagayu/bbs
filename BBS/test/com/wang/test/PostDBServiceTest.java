package com.wang.test;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import com.wang.service.impl.ReplyPageManagerImpl;


public class PostDBServiceTest {
	
	
	@Test
	public void testReply() {
		ReplyPageManagerImpl pageManager =ReplyPageManagerImpl.getInstance();
		pageManager.add(0, "asdasd", "asdasd");
	}

}
