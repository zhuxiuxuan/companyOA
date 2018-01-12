package com.zxx.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.zxx.dao.DepartmentDao;
import com.zxx.entity.Department;
import com.zxx.entity.Position;

public class DepartmentDaoImpl implements DepartmentDao{
	private SqlSessionTemplate sst;

	public SqlSessionTemplate getSst() {
		return sst;
	}

	public void setSst(SqlSessionTemplate sst) {
		this.sst = sst;
	}

	@Override
	public List<Department> find(Map<String, Object> map) {
		return sst.selectList("com.zxx.dao.impl.DepartmentDaoImpl.find",map);
	}

	@Override
	public List<Position> findPosition(Map<String, Object> map) {
		return sst.selectList("com.zxx.dao.impl.DepartmentDaoImpl.findPosition", map);
	}
	
}
