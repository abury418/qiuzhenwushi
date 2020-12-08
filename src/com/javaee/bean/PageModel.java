package com.javaee.bean;

import java.util.ArrayList;

public class PageModel<T> {

	private int pageSize;
	private int totalRecords;
	private int pageNo;
	private ArrayList<T> list;
	
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalRecords() {
		return totalRecords;
	}
	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public ArrayList<T> getList() {
		return list;
	}
	public void setList(ArrayList<T> list) {
		this.list = list;
	}
	
	public PageModel(int pageSize, int totalRecords, int pageNo, ArrayList<T> list) {
		this.pageSize = pageSize;
		this.totalRecords = totalRecords;
		this.pageNo = pageNo;
		this.list = list;
	}
	
	/**
	 * ����ҳ��
	 */
	public int getTotalPages() {
		return (totalRecords+pageSize-1)/pageSize;
	}
	/**
	 * ��ҳ
	 */
	public int getTop() {
		return 1;
	}
	/**
	 * ��һҳ
	 */
	public int getNext() {
		if(pageNo < getTotalPages()) {
			return pageNo+1;
		}
		else {
			return getTotalPages();
		}
	}
	/**
	 * ��һҳ
	 */
	public int getPrev() {
		if(pageNo>1) {
			return pageNo-1;
		}
		else {
			return 1;
		}
	}
	/**
	 * βҳ
	 */
	public int getBottom() {
		return getTotalPages();
	}
	

}
