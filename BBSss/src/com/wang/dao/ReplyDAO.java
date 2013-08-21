package com.wang.dao;

import java.util.List;

import com.wang.objects.Reply;

public interface ReplyDAO {

	List<Reply> getReplys(int pid);

	void saveReply(int pid, String title, String content);


}
