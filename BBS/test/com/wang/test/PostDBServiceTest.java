package com.wang.test;

import java.util.List;

import org.junit.Test;

import com.wang.objects.Post;
import com.wang.objects.Reply;
import com.wang.service.hibernate.PostDBService;
import com.wang.service.hibernate.ReplyDBService;

public class PostDBServiceTest {

	@Test
	public void testGetPosts() {
		List<Post> posts = PostDBService.getPosts();
		System.out.println(posts.size());
		List<Reply> replys = ReplyDBService.getReplys(1);
		System.out.println(replys.size());
		ReplyDBService.saveReply(1, "啊的撒", "是的撒");
	}



}
