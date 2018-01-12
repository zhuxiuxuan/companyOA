package com.zxx.entity;

import java.util.List;

/**
 * 部门实体类
 * @author 朱修轩
 *2017-12-22
 *下午3:55:47
 */
public class Department {
	private String d_id;
	private String d_name;
	private String d_date;
	private List<Position> positions;
	
	public List<Position> getPositions() {
		return positions;
	}
	public void setPositions(List<Position> positions) {
		this.positions = positions;
	}
	public String getD_date() {
		return d_date;
	}
	public void setD_date(String d_date) {
		this.d_date = d_date;
	}
	public String getD_id() {
		return d_id;
	}
	public void setD_id(String d_id) {
		this.d_id = d_id;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	
}
