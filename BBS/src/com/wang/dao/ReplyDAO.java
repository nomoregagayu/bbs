package com.wang.dao;

import java.util.List;

import com.wang.models.Reply;

public interface ReplyDAO {


	void saveReply(int pid, String title, String content);

	Integer getTotalCount();

	List<Reply> getReplys(int pid, int firstResult, int maxResult);


}
