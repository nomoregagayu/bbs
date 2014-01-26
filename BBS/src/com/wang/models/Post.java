package com.wang.models;

import java.sql.Timestamp;
import java.util.Set;

import org.springframework.stereotype.Component;


@Component("Post")
public class Post extends Article {
	private int userId;
	private String title;
	private String content;
	private Timestamp pdate;
	private int viewCount;
	private Set<Reply> replies;

	public Post() {
		super();
	}

	public Post(int userId, String title, String content, Timestamp pdate,
			int viewCount) {
		super(userId, title, content, pdate);
		this.viewCount = viewCount;
	}


	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
//one-to-many 不能用两边都用not null
	public Set<Reply> getReplies() {
		return replies;
	}

	public void setReplies(Set<Reply> replies) {
		this.replies = replies;
	}


		
}
