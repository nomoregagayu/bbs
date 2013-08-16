package com.wang.objects;

import java.sql.Timestamp;

public abstract class Article {
	private Integer id;
		private String author;
	private String title;
	private String content;
	private Timestamp pdate;
	
	public Article() {
		super();
	}
	public Article(String author, String title, String content, Timestamp pdate) {
		super();
		this.author = author;
		this.title = title;
		this.content = content;
		this.pdate = pdate;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
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

}
