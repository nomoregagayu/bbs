package com.wang.models;

import java.sql.Timestamp;


public abstract class Article {
	private int id;
	private int userId;
	private String title;
	private String content;
	private Timestamp pdate;
	private User user;
	
		public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Article() {
		super();
	}
	public Article(Integer userId, String title, String content, Timestamp pdate) {
		super();
		this.userId = userId;
		this.title = title;
		this.content = content;
		this.pdate = pdate;
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getPdate() {
		return pdate;
	}
	public void setPdate(Timestamp pdate) {
		this.pdate = pdate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	

}
