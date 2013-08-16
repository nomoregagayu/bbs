package com.wang.objects;

import java.sql.Timestamp;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Reply extends Article {
	private int pid;
	private int followId;
	public Reply() {
		super();

	}
	public Reply(int pid, int followId, String author, String title,
			String content, Timestamp stampDate) {
		super(author, title, content, stampDate);
		this.pid = pid;
		this.followId = followId;
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

}
