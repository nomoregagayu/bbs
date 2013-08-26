package com.wang.services;

import com.wang.models.Page;

public interface PageManager {

	Page getPage(String article, int currentPage);

}
