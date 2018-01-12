package com.zxx.biz;

import java.util.List;
import java.util.Map;

import com.zxx.entity.Department;
import com.zxx.entity.Position;

public interface DepartmentBiz {
	/**
	 * 查询出所有的部门
	 * 2017-12-24-下午3:59:00
	 * @return
	 */
	public List<Department> findAllDepartment();
	/**
	 * 根据部门查询对应部门职位
	 * 2017-12-24-下午4:49:58
	 * @param map
	 * @return
	 */
	public List<Position> findPositionByDID(Map<String, Object> map);

}
