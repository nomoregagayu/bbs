package com.wang.services;

import com.wang.objects.Page;

public interface PageManager {

	Page getPage(String article, int currentPage);

}
