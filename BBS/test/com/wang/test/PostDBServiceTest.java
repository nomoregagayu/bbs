package com.wang.test;

import java.util.List;

import org.junit.Test;

import com.wang.dao.impl.PostDAOImpl;
import com.wang.dao.impl.ReplyDAOImpl;
import com.wang.objects.Post;
import com.wang.objects.Reply;

public class PostDBServiceTest {

	@Test
	public void testGetPosts() {
		List<Post> posts = new PostDAOImpl().getPosts();
		System.out.println(posts.size());
		ReplyDAOImpl replyDAOImpl = new ReplyDAOImpl();
		List<Reply> replys = new ReplyDAOImpl().getReplys(1);
		System.out.println(replys.size());
		replyDAOImpl.saveReply(1, "啊的撒", "是的撒");
	}

}
