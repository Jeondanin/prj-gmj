package com.gmj.prj.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gmj.prj.dao.GmjMapDAO;
import com.gmj.prj.vo.GmjArchitectInfo;

@Repository
public class GmjMapDAOImpl implements GmjMapDAO {

	@Autowired
	private SqlSession ss;
	@Override
	public List<GmjArchitectInfo> getgmjMapList() {
		// TODO Auto-generated method stub
		return ss.selectList("com.gmj.prj.GmjMap.selectGmjMapList");
	}
	@Override
	public int deleteGmjMap(int gmjarchitectno) {
		// TODO Auto-generated method stub
		return ss.delete("com.gmj.prj.GmjMap.deleteGmjMap",gmjarchitectno);
	}
	@Override
	public int updateGmjMap(GmjArchitectInfo ga) {
		// TODO Auto-generated method stub
		return ss.update("com.gmj.prj.GmjMap.updateGmjMap",ga);
	}

}
