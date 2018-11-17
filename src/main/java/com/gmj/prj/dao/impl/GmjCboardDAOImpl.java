package com.gmj.prj.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
	@Override
	public int insertCboard(GmjCboard gc) {
		
		return ss.insert("com.gmj.prj.vo.GmjCboard.insertCboard",gc);
	}
	@Override
	public List<GmjCboard> getList(HttpServletRequest req) {
		Map<String,Integer> pageFactor = new HashMap<String,Integer>();
		int pageNo = Integer.parseInt(req.getParameter("page"));
		int bundle =10;
		pageFactor.put("bundle", bundle);
		pageFactor.put("OFFSET",bundle*(pageNo-1));
		return ss.selectList("com.gmj.prj.vo.GmjCboard.selectCboardListUser",pageFactor);
	}

}
