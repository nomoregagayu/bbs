package com.wang.objects;

import java.util.List;

public class Page {
	private int currentPage;
	private Boolean hasNext;
	private Boolean hasPre;
	private int totalPage;
	private int totalCount;
	private List<? extends Article> article;
		public Page() {
		super();
	}
	public Page( int currentPage, Boolean hasNext,
			Boolean hasPre, int totalPage, int totalCount) {
		super();
		this.currentPage = currentPage;
		this.hasNext = hasNext;
		this.hasPre = hasPre;
		this.totalPage = totalPage;
		this.totalCount = totalCount;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public Boolean getHasNext() {
		return hasNext;
	}
	public void setHasNext(Boolean hasNext) {
		this.hasNext = hasNext;
	}
	public Boolean getHasPre() {
		return hasPre;
	}
	public void setHasPre(Boolean hasPre) {
		this.hasPre = hasPre;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public List<? extends Article> getArticle() {
		return article;
	}
	public void setArticle(List<? extends Article> article) {
		this.article = article;
	}

}
