package com.zxx.biz.impl;

import java.util.List;
import java.util.Map;

import com.zxx.biz.DepartmentBiz;
import com.zxx.dao.DepartmentDao;
import com.zxx.entity.Department;
import com.zxx.entity.Position;

public class DepartmentBizImpl implements DepartmentBiz{
	private DepartmentDao departmentDao;

	public DepartmentDao getDepartmentDao() {
		return departmentDao;
	}

	public void setDepartmentDao(DepartmentDao departmentDao) {
		this.departmentDao = departmentDao;
	}

	@Override
	public List<Department> findAllDepartment() {
		return departmentDao.find(null);
	}

	@Override
	public List<Position> findPositionByDID(Map<String, Object> map) {
		return departmentDao.findPosition(map);
	}
	
}
