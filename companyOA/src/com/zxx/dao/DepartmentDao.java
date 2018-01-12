package com.zxx.dao;

import java.util.List;
import java.util.Map;

import com.zxx.entity.Department;
import com.zxx.entity.Position;

public interface DepartmentDao {
	/**
	 * 查询部门表
	 * 2017-12-24-下午3:52:09
	 * @return
	 */
	public List<Department> find(Map<String, Object> map);
	/**
	 * 查询职位表
	 * 2017-12-24-下午4:45:08
	 * @param map
	 * @return
	 */
	public List<Position> findPosition(Map<String, Object> map);

}
