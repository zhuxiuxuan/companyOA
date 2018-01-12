package com.zxx.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.zxx.dao.WeeklyDao;
import com.zxx.entity.Weekly;

public class WeeklyDaoImpl implements WeeklyDao{
	private SqlSessionTemplate sst;

	public SqlSessionTemplate getSst() {
		return sst;
	}

	public void setSst(SqlSessionTemplate sst) {
		this.sst = sst;
	}

	@Override
	public int add(Weekly weekly) {
		return sst.insert("com.zxx.dao.impl.WeeklyDaoImpl.add", weekly);
	}

	@Override
	public int findCount(Map<String, Object> map) {
		return sst.selectOne("com.zxx.dao.impl.WeeklyDaoImpl.findCount", map);
	}

	@Override
	public List<Weekly> find(Map<String, Object> map) {
		return sst.selectList("com.zxx.dao.impl.WeeklyDaoImpl.find", map);
	}
	

}
