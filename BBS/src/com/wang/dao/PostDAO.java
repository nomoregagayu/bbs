package com.wang.dao;

import java.util.List;

import com.wang.objects.Post;

public interface PostDAO {


	Integer getTotalCount();

	List<Post> getPosts(int fistResult, int maxResult);


}
