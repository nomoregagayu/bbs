package com.wang.objects;

import java.sql.Timestamp;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.junit.Ignore;

public class Reply extends Article {
	private int followId;
	private int postId;
	private Post post;
	public Reply() {
		super();

	}
	public Reply(int postId, int followId, int userId, String title,
			String content, Timestamp pdate) {
		super(userId, title, content, pdate);
		this.postId = postId;
		this.followId = followId;
	}

	
	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
		public int getFollowId() {
		return followId;
	}

	public void setFollowId(int followId) {
		this.followId = followId;
	}

	public Post getPost() {
		return post;
	}
	//many-to-one
	public void setPost(Post post) {
		this.post = post;
	}
}
