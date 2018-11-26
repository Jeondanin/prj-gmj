package com.gmj.prj.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gmj.prj.dao.GmjBboardDAO;
import com.gmj.prj.vo.GmjBboard;
@Repository
public class GmjBboardDAOImpl implements GmjBboardDAO {

	@Autowired
	private SqlSession ss;
	@Override
	public List<GmjBboard> getBboardList() {
		// TODO Auto-generated method stub
		return ss.selectList("com.gmj.prj.vo.GmjBboard.selectBboardList");
	}
	@Override
	public List<GmjBboard> getBboardList(HttpServletRequest req) {
		Map<String,Integer> pageFactor = new HashMap<String,Integer>();
		int pageNo = Integer.parseInt(req.getParameter("page"));
		int bundle =10;
		pageFactor.put("bundle", bundle);
		pageFactor.put("OFFSET",bundle*(pageNo-1));
		System.out.println(pageFactor);
		return ss.selectList("com.gmj.prj.vo.GmjBboard.selectBboardListUser",pageFactor);
	
	}
	@Override
	public GmjBboard selectBboard(int gmjbboardno) {
		// TODO Auto-generated method stub
		return ss.selectOne("com.gmj.prj.vo.GmjBboard.selectBboard", gmjbboardno);
	}
	@Override
	public int updateBboard(GmjBboard gb) {
		// TODO Auto-generated method stub
		return ss.update("com.gmj.prj.vo.GmjBboard.updateBboard", gb);
	}
	@Override
	public int deleteBboard(int gmjbboardno) {
		// TODO Auto-generated method stub
		return ss.delete("com.gmj.prj.vo.GmjBboard.deleteBboard",gmjbboardno);
	}
	@Override
	public int getOrder(int gmjbboardno) {
		// TODO Auto-generated method stub
		return ss.selectOne("com.gmj.prj.vo.GmjBboard.getOrder",gmjbboardno);
	}
	

}
