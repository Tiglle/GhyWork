package com.ghy.page;

import java.util.List;

public class Page <T>{

	private List<T> data;
	
	private int pageNow;
	
	private int pageSize;
	
	private int pageSum;
	
	private int countSum;
	
	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageSum() {
		return pageSum;
	}

	public void setPageSum(int pageSum) {
		this.pageSum = pageSum;
	}

	public int getCountSum() {
		return countSum;
	}

	public void setCountSum(int countSum) {
		this.countSum = countSum;
	}

}
