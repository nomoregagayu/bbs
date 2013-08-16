package com.wang.objects;

import java.sql.Timestamp;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class Post extends Article {
	private int viewCount;
	public Post() {
		super();
	}
	public Post(String author, String title, String content, Timestamp pdate,
			int viewCount) {
		super(author, title, content, pdate);
		this.viewCount = viewCount;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	
}
