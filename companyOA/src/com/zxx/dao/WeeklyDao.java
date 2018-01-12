package com.zxx.dao;

import java.util.List;
import java.util.Map;

import com.zxx.entity.Weekly;

public interface WeeklyDao {
	/**
	 * 添加
	 * 2017-12-27上午10:03:41
	 */
	public int add(Weekly weekly);
	/**
	 * 查询条数
	 * 2017-12-28上午8:41:01
	 */
	public int findCount(Map<String, Object> map);
	/**
	 * 查询周报
	 * 2017-12-28上午9:21:00
	 */
	public List<Weekly> find(Map<String, Object> map);

}
