package com.gmj.prj.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.gmj.prj.vo.GmjBboard;
import com.gmj.prj.vo.GmjReply;


public interface GmjBboardDAO {

	public List<GmjBboard> getBboardList();
	public List<GmjBboard> getBboardList(HttpServletRequest req);
	public GmjBboard selectBboard(int gmjbboardno);
	public int updateBboard(GmjBboard gb);
	public int deleteBboard(int gmjbboardno);
	public int getOrder(int gmjbboardno);
	
	public List<GmjReply> getReply(int gmjbboardno);
}
