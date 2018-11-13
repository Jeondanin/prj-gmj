package com.gmj.prj.dao.impl;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gmj.prj.dao.GmjLogDAO;
@Repository
public class GmjLogDAOImpl implements GmjLogDAO {
	@Autowired
	private SqlSession ss;
	@Override
	public int gmjInsertLog(Map<String, String> logMap) {
		// TODO Auto-generated method stub
		return ss.insert("com.gmj.prj.GmjLog.insertLog",logMap);
	}

}
