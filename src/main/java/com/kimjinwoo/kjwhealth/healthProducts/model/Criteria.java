package com.kimjinwoo.kjwhealth.healthProducts.model;

public class Criteria {
	
	private int page; 
	private int perPageNum; 
	
	private String key;
	private String word;
	
	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public Criteria() { 
		this.page = 1; 
		this.perPageNum = 9;
	} 
	
	public void setPage(int page) { 
		if (page <= 0) { 
			this.page = 1; 
			return; 
		} 
		
		this.page = page; 
	} 
	
	public int getPage() { 
		return page; 
	} 
	
	public void setPerPageNum(int perPageNum) {
		if (perPageNum <= 0 || perPageNum > 100) { 
			this.perPageNum = 10; 
			return; 
		} 
		
		this.perPageNum = perPageNum; 
	} 
	
	public int getPerPageNum() { 
		return this.perPageNum; 
	} 
	
	public int getPageStart() { 
		return (this.page - 1) * perPageNum; 
	} 
	
	@Override 
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum="+ perPageNum+"]" ; 
	}
}
