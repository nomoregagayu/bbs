package com.wang.objects;

import java.sql.Timestamp;

import java.util.Set;


public class CopyOfPost extends Article {
	private int viewCount;
	private Set<Reply> replies;

	public CopyOfPost() {
		super();
	}

	public CopyOfPost(int userId, String title, String content, Timestamp pdate,
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
