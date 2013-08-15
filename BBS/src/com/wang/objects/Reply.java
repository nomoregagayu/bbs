package com.wang.objects;

import java.sql.Timestamp;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Reply {
	@Id
	@GeneratedValue
	private int replyId;
	private int pid;
	private int followId;
	private String author;
	private String	title;
	private String content;
	private Timestamp pdate;
	
	public Reply() {
		super();
	}
	public Reply(int pid, int followId, String author, String title,
			String content, Timestamp pdate) {
		super();
		this.pid = pid;
		this.followId = followId;
		this.author = author;
		this.title = title;
		this.content = content;
		this.pdate = pdate;
	}
	public int getReplyId() {
		return replyId;
	}
	public void setReplyId(int replyId) {
		this.replyId = replyId;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getFollowId() {
		return followId;
	}
	public void setFollowId(int followId) {
		this.followId = followId;
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
