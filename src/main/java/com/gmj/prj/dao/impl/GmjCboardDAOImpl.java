package com.gmj.prj.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gmj.prj.dao.GmjCboardDAO;
import com.gmj.prj.vo.GmjCboard;
@Repository
public class GmjCboardDAOImpl implements GmjCboardDAO {
	@Autowired
	private SqlSession ss;
	@Override
	public List<GmjCboard> getList() {
		
		return ss.selectList("com.gmj.prj.vo.GmjCboard.selectCboardList");
	}

}
