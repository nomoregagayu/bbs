package com.wang.models;

import java.util.List;

public class Page {
	private int currentPage;
	private int nextPage;
	private int prePage;
	private int totalPage;
	private int totalCount;
	private int pageBar =8;
	public int getPageBar() {
		return pageBar;
	}
	public void setPageBar(int pageBar) {
		this.pageBar = pageBar;
	}
	private List<? extends Article> article;
		public Page() {
		super();
	}
		public Page(int currentPage, int nextPage, int prePage, int totalPage,
				int totalCount, List<? extends Article> article) {
			super();
			this.currentPage = currentPage;
			this.nextPage = nextPage;
			this.prePage = prePage;
			this.totalPage = totalPage;
			this.totalCount = totalCount;
			this.article = article;
		}
		public int getCurrentPage() {
			return currentPage;
		}
		public void setCurrentPage(int currentPage) {
			this.currentPage = currentPage;
		}
		public int getNextPage() {
			return nextPage;
		}
		public void setNextPage(int nextPage) {
			this.nextPage = nextPage;
		}
		public int getPrePage() {
			return prePage;
		}
		public void setPrePage(int prePage) {
			this.prePage = prePage;
		}
		public int getTotalPage() {
			return totalPage;
		}
		public void setTotalPage(int totalPage) {
			this.totalPage = totalPage;
		}
		public int getTotalCount() {
			return totalCount;
		}
		public void setTotalCount(int totalCount) {
			this.totalCount = totalCount;
		}
		public List<? extends Article> getArticle() {
			return article;
		}
		public void setArticle(List<? extends Article> article) {
			this.article = article;
		}
	
}
