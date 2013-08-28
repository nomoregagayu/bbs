package com.wang.test;

import java.util.List;

import org.junit.Test;

import com.wang.dao.impl.PostDAOImpl;
import com.wang.dao.impl.ReplyDAOImpl;
import com.wang.dao.impl.UserDAOImpl;
import com.wang.models.Page;
import com.wang.models.Reply;
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
		Page pageDetail = new PageManagerImpl().getPage("Post", 2);
		System.out.println(pageDetail.getArticle().get(0).getContent());
		System.out.println(pageDetail.getNextPage());
	}
	@Test
	public void testUser() {
		UserDAOImpl userDAO = new UserDAOImpl();
		System.out.println(userDAO.getUser("gagayu1", "gagayu").isEmpty());
	}

}
