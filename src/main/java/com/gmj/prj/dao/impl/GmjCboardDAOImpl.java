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
import com.gmj.prj.vo.GmjReply;
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
	@Override
	public GmjCboard getOne(int gmjcboardno) {
		ss.update("com.gmj.prj.vo.GmjCboard.pluscnt",gmjcboardno);
		GmjCboard result =ss.selectOne("com.gmj.prj.vo.GmjCboard.selectCboard",gmjcboardno);
		System.out.println("결과는"+result);
		if (result==null) {
			return ss.selectOne("com.gmj.prj.vo.GmjCboard.selectCboardnoimg",gmjcboardno);
		}
		return  result;
		
	}
	@Override
	public GmjCboard getLatestOne() {	
		return ss.selectOne("com.gmj.prj.vo.GmjCboard.selectLatestCboard");
	}
	@Override
	public int insertReply(HashMap<String, String> reply) {
		
		return ss.insert("com.gmj.prj.vo.GmjCboard.insertReply",reply);
	}
	@Override
	public List<GmjReply> getReply(int gmjcboardno) {
		// TODO Auto-generated method stub
		return ss.selectList("com.gmj.prj.vo.GmjCboard.selectReply",gmjcboardno);
	}
	@Override
	public List<GmjReply> getReplyadmin() {
		
		return ss.selectList("com.gmj.prj.vo.GmjCboard.selectReplyadmin");
	}
	@Override
	public int deleteReply(int gmjreplyno) {
		// TODO Auto-generated method stub
		return ss.delete("com.gmj.prj.vo.GmjCboard.deleteReply",gmjreplyno);
	}
	@Override
	public int getOrder(int gmjcboardno) {
		
		return ss.selectOne("com.gmj.prj.vo.GmjCboard.getOrder",gmjcboardno);
	}
	
	

}
