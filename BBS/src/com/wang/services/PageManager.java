package com.wang.services;

import com.wang.web.dto.Page;

public interface PageManager {
	public Page list(int currentPage) ;
	public Page list(int pid, int currentPage);
	public void add(Integer pid, String title, String content);

}
