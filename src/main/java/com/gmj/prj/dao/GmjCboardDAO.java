package com.gmj.prj.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.gmj.prj.vo.GmjCboard;
import com.gmj.prj.vo.GmjReply;

public interface GmjCboardDAO {
	public List<GmjCboard> getList();
	public List<GmjCboard> getList(HttpServletRequest req);
	public int insertCboard(GmjCboard gc);
	public GmjCboard getOne(int gmjcboardno);
	public List<GmjCboard> searchList(String searchWord);
	public GmjCboard getLatestOne();
	public int updateCboardList(List<GmjCboard> gc);
	public int deletecboard(int gmjcboardno);
	public int updateGmjCBoard(GmjCboard gc);
	
	
	public int insertReply(HashMap<String, String> reply);
	public List<GmjReply> getReply(int gmjcboardno); 
	public List<GmjReply> getReplyadmin();
	public int deleteReply(int gmjreplyno);
	public int getOrder(int gmjcboardno);
}
