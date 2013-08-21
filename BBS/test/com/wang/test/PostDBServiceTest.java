package com.wang.test;

import java.util.List;

import org.junit.Test;

import com.wang.dao.impl.PostDAOImpl;
import com.wang.dao.impl.ReplyDAOImpl;
import com.wang.dao.impl.UserDAOImpl;
import com.wang.objects.Reply;
import com.wang.service.impl.PageManagerImpl;

public class PostDBServiceTest {

	@Test
	public void testGetPosts() {
		PostDAOImpl postDAOImpl = new PostDAOImpl();
		System.out.println("\n"+postDAOImpl.getTotalCount());
		ReplyDAOImpl replyDAOImpl = new ReplyDAOImpl();
		List<Reply> replys = replyDAOImpl.getReplys(1);
		System.out.println(replys.get(0).getTitle()+"user"+replys.get(0).getUser().getName());
		replyDAOImpl.saveReply(1, "1weqwe", "asqweq22das");
		
//		replyDAOImpl.saveReply(1, "啊的撒", "是的撒");
	}
	@Test
	public void testPageManager() {
		PageManagerImpl pageManager = new PageManagerImpl();
		System.out.println(pageManager.getPage("Post", 1).getArticle().get(0).getTitle());
	}
	@Test
	public void testUser() {
		UserDAOImpl userDAOImpl = new UserDAOImpl();
		System.out.println(userDAOImpl.getUser(1).get(0).getName());
	}

}
