package com.gmj.prj.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gmj.prj.dao.GmjVboardDAO;
import com.gmj.prj.vo.GmjCboard;
import com.gmj.prj.vo.GmjVboard;
@Repository
public class GmjVboardDAOImpl implements GmjVboardDAO {
	@Autowired
	private SqlSession ss;
	@Override
	public List<GmjVboard> getList() {
		
		return ss.selectList("com.gmj.prj.vo.GmjVboard.selectVboardList");
	}
	@Override
	public List<GmjVboard> getList(HttpServletRequest req) {
		Map<String,Integer> pageFactor = new HashMap<String,Integer>();
		int pageNo = Integer.parseInt(req.getParameter("page"));
		int bundle =10;
		pageFactor.put("bundle", bundle);
		pageFactor.put("OFFSET",bundle*(pageNo-1));
		return ss.selectList("com.gmj.prj.vo.GmjVboard.selectVboardListUser",pageFactor);
	}
	@Override
	public GmjVboard getOne(int gmjvboardno) {
		
		ss.update("com.gmj.prj.vo.GmjVboard.pluscnt",gmjvboardno);
		GmjVboard result =ss.selectOne("com.gmj.prj.vo.GmjVboard.selectVboard",gmjvboardno);
		
		return  result;
	}

}
