package com.zxx.util;

import java.util.List;

import com.zxx.entity.Staff;

public class PageUtil {
	/**
	 * 总页数
	 */
	private int pageCount;
	/**
	 * 每页显示多少条
	 */
	private int pageSize;
	/**
	 * 记录总条数
	 */
	private int totalCount;
	/**
	 * 當前頁碼
	 */
	private int pageNo;
	private List list;
	//private List<users> userList;

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		this.pageCount = this.totalCount%this.pageSize==0?
				this.totalCount/this.pageSize:this.totalCount/this.pageSize+1;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public static PageUtil pageFind(String pageNo,int PageSize,int totalCount,List list){
		int PageNo = Integer.parseInt(pageNo);
		PageUtil pageUtil = new PageUtil();
		pageUtil.setPageSize(PageSize);
		pageUtil.setTotalCount(totalCount);
		pageUtil.setPageNo(PageNo);
		pageUtil.setList(list);
		return pageUtil;
	}

}
